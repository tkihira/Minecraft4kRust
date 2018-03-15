// rustc mine.rs --crate-type=cdylib -O --target=wasm32-unknown-unknown -o mine.wasm
use std::f64::consts::PI;
const W:i32 = 200;
const H:i32 = 200;

static mut PIXELS: & mut [u8] = &mut [0; (W * H * 4) as usize];

static mut MAP: &'static mut[i32] = &mut[0; 64 * 64 * 64];
static mut TEXMAP: & mut [i32] = &mut [0; 16 * 16 * 3 * 16];

extern {
    fn random() -> f64;
    fn sqrt(_: f64) -> f64;
    fn sin(_: f64) -> f64;
    fn cos(_: f64) -> f64;
    fn now() -> f64;
}

#[no_mangle]
pub unsafe extern "C" fn init() {
    for i in 1..16 {
        let mut br = 255 - (random() * 96.) as i32;
        for y in 0..16*3 {
            for x in 0..16 {
                let mut color = 0x966C4A;
                if i == 4 {
                    color = 0x7F7F7F;
                }
                if i != 4 || (random() * 3.) as i32 == 0 {
                    br = 255 - (random() * 96.) as i32;
                }
                if i == 1 && y < (((x * x * 3 + x * 81) >> 2) & 3) + 18 {
                    color = 0x6AAA40;
                } else if i == 1 && y < (((x * x * 3 + x * 81) >> 2) & 3) + 19 {
                    br = br * 2 / 3;
                }
                if i == 7 {
                    color = 0x675231;
                    if x > 0 && x < 15
                        && ((y > 0 && y < 15) || (y > 32 && y < 47)) {
                        color = 0xBC9862;
                        let mut xd = x - 7;
                        let mut yd = (y & 15) - 7;
                        if xd < 0 {
                            xd = 1 - xd;
                        }
                        if yd < 0 {
                            yd = 1 - yd;
                        }
                        if yd > xd {
                            xd = yd;
                        }
                        br = 196 - (random() * 32.) as i32 + xd % 3 * 32;
                    } else if (random() * 2.) as i32 == 0 {
                        br = br * (150 - (x & 1) * 100) / 100;
                    }
                }
                if i == 5 {
                    color = 0xB53A15;
                    if (x + (y >> 2) * 4) % 8 == 0 || y % 4 == 0 {
                        color = 0xBCAFA5;
                    }
                }
                if i == 9 {
                    color = 0x4040ff;
                }
                let mut brr = br;
                if y >= 32 {
                    brr /= 2;
                }
                if i == 8 {
                    color = 0x50D937;
                    if (random() * 2.) as i32 == 0 {
                        color = 0;
                        brr = 255;
                    }
                }
                let col = (((color >> 16) & 0xFF) * brr / 255) << 16
                        | (((color >> 8) & 0xFF) * brr / 255) << 8
                        | (((color) & 0xFF) * brr / 255);
                TEXMAP[(x + y * 16 + i * 256 * 3) as usize] = col;
            }
        }
    }

    for x in 0..64 {
        for y in 0..64 {
            for z in 0..64 {
                let i = z << 12 | y << 6 | x;
                let yd = (y as f64 - 32.5) * 0.4;
                let zd = (z as f64 - 32.5) * 0.4;
                MAP[i] = (random() * 16.) as i32;
                if random() > sqrt(sqrt(yd * yd + zd * zd)) - 0.8 {
                    MAP[i] = 0;
                }
            }
        }
    }

    for i in 0..W * H {
        PIXELS[(i * 4 + 3) as usize] = 255;
    }
}

#[no_mangle]
pub unsafe extern "C" fn renderMinecraft() {
    let x_rot = sin((now() as i32 % 10000) as f64 / 10000. * PI * 2.) * 0.4
            + PI / 2.;
    let y_rot = cos((now() as i32 % 10000) as f64 / 10000. * PI * 2.) * 0.4;
    let y_cos = cos(y_rot);
    let y_sin = sin(y_rot);
    let x_cos = cos(x_rot);
    let x_sin = sin(x_rot);

    let ox = 32.5 + (now() as i32 % 10000) as f64 / 10000. * 64.;
    let oy = 32.5;
    let oz = 32.5;

    let w = W as f64;
    let h = H as f64;
    for x in 0..W {
        let x = x as f64;
        let ___xd = (x - w / 2.) / h;
        for y in 0..H {
            let y = y as f64;
            let __yd = (y - h / 2.) / h;
            let __zd = 1.;

            let ___zd = __zd * y_cos + __yd * y_sin;
            let _yd = __yd * y_cos - __zd * y_sin;

            let _xd = ___xd * x_cos + ___zd * x_sin;
            let _zd = ___zd * x_cos - ___xd * x_sin;

            let mut col = 0;
            let mut br = 255;
            let mut ddist = 0;

            let mut closest = 32.;
            for d in 0..3 {
                let mut dim_length = _xd;
                if d == 1 {
                    dim_length = _yd;
                }
                if d == 2 {
                    dim_length = _zd;
                }

                let ll = 1. / if dim_length < 0. {-dim_length} else {dim_length};
                let xd = _xd * ll;
                let yd = _yd * ll;
                let zd = _zd * ll;

                let mut initial = ox - ox as i32 as f64;
                if d == 1 {
                    initial = oy - oy as i32 as f64;
                }
                if d == 2 {
                    initial = oz - oz as i32 as f64;
                }
                if dim_length > 0. {
                    initial = 1. - initial;
                }
                let mut dist = ll * initial;

                let mut xp = ox + xd * initial;
                let mut yp = oy + yd * initial;
                let mut zp = oz + zd * initial;

                if dim_length < 0. {
                    if d == 0 {
                        xp = xp - 1.;
                    }
                    if d == 1 {
                        yp = yp - 1.;
                    }
                    if d == 2 {
                        zp = zp - 1.;
                    }
                }

                while dist < closest {
                    let tex = MAP[((zp as i32 & 63) << 12 | (yp as i32 & 63) << 6 | (xp as i32 & 63)) as usize];

                    if tex > 0 {
                        let mut u = ((xp + zp) * 16.) as i32 & 15;
                        let mut v = ((yp * 16.) as i32 & 15) + 16;
                        if d == 1 {
                            u = (xp * 16.) as i32 & 15;
                            v = (zp * 16.) as i32 & 15;
                            if yd < 0. {
                                v += 32;
                            }
                        }

                        let cc = TEXMAP[(u + v * 16 + tex * 256 * 3) as usize];
                        if cc > 0 {
                            col = cc;
                            ddist = 255 - ((dist / 32. * 255.) as i32);
                            br = 255 * (255 - ((d + 2) % 3) * 50) / 255;
                            closest = dist;
                        }
                    }
                    xp += xd;
                    yp += yd;
                    zp += zd;
                    dist += ll;
                }
            }
            let r = ((col >> 16) & 0xFF) * br * ddist / (255 * 255);
            let g = ((col >> 8) & 0xFF) * br * ddist / (255 * 255);
            let b = ((col) & 0xFF) * br * ddist / (255 * 255);

            PIXELS[((x + y * w) as i32 * 4 + 0) as usize] = r as u8;
            PIXELS[((x + y * w) as i32 * 4 + 1) as usize] = g as u8;
            PIXELS[((x + y * w) as i32 * 4 + 2) as usize] = b as u8;
        }
    }
}
