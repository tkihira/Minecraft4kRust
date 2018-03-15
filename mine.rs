const W:i32 = 200;
const H:i32 = 200;

static mut MAP: &'static mut[i32] = &mut[0; 64 * 64 * 64];
static mut TEXMAP: & mut [i32] = &mut [0; 16 * 16 * 3 * 16];

extern {
    fn random() -> f64;
    fn sqrt(_: f64) -> f64;
}

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

    // setting up ctx here
    
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
}
