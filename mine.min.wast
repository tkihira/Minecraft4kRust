(module
  (type (;0;) (func (param f64) (result f64)))
  (type (;1;) (func (result f64)))
  (type (;2;) (func))
  (type (;3;) (func (result i32)))
  (import "env" "cos" (func (;0;) (type 0)))
  (import "env" "now" (func (;1;) (type 1)))
  (import "env" "random" (func (;2;) (type 1)))
  (import "env" "sin" (func (;3;) (type 0)))
  (import "env" "sqrt" (func (;4;) (type 0)))
  (func (;5;) (type 3) (result i32)
    i32.const 16)
  (func (;6;) (type 2)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 f64 f64 f64 f64)
    i32.const 1211664
    set_local 8
    i32.const 1
    set_local 9
    loop  ;; label = @1
      get_local 9
      i32.const 4
      i32.eq
      set_local 16
      block  ;; label = @2
        block  ;; label = @3
          call 2
          f64.const 0x1.8p+6 (;=96;)
          f64.mul
          tee_local 21
          f64.abs
          f64.const 0x1p+31 (;=2.14748e+09;)
          f64.lt
          br_if 0 (;@3;)
          i32.const -2147483648
          set_local 18
          br 1 (;@2;)
        end
        get_local 21
        i32.trunc_s/f64
        set_local 18
      end
      i32.const 8355711
      i32.const 9858122
      get_local 16
      select
      set_local 1
      get_local 9
      i32.const 1
      i32.add
      set_local 0
      i32.const 255
      get_local 18
      i32.sub
      set_local 17
      i32.const 0
      set_local 11
      get_local 8
      set_local 10
      loop  ;; label = @2
        i32.const 8
        set_local 13
        i32.const 8
        get_local 11
        tee_local 2
        i32.const 15
        i32.and
        tee_local 16
        i32.sub
        get_local 16
        i32.const -7
        i32.add
        get_local 16
        i32.const 7
        i32.lt_u
        select
        set_local 5
        get_local 2
        i32.const 3
        i32.and
        set_local 6
        get_local 2
        i32.const 1
        i32.add
        set_local 11
        get_local 2
        i32.const 4
        i32.and
        set_local 3
        get_local 2
        i32.const -33
        i32.and
        i32.const -1
        i32.add
        set_local 4
        i32.const 81
        set_local 12
        get_local 10
        set_local 14
        i32.const 0
        set_local 15
        loop  ;; label = @3
          get_local 15
          tee_local 18
          i32.const 1
          i32.add
          set_local 15
          call 2
          set_local 21
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      block  ;; label = @10
                        block  ;; label = @11
                          block  ;; label = @12
                            block  ;; label = @13
                              block  ;; label = @14
                                block  ;; label = @15
                                  block  ;; label = @16
                                    block  ;; label = @17
                                      block  ;; label = @18
                                        get_local 9
                                        i32.const 4
                                        i32.ne
                                        br_if 0 (;@18;)
                                        get_local 21
                                        f64.const 0x1.8p+1 (;=3;)
                                        f64.mul
                                        tee_local 21
                                        f64.abs
                                        f64.const 0x1p+31 (;=2.14748e+09;)
                                        f64.lt
                                        br_if 1 (;@17;)
                                        i32.const 8355711
                                        set_local 16
                                        i32.const -2147483648
                                        br_if 13 (;@5;)
                                        br 2 (;@16;)
                                      end
                                      get_local 9
                                      i32.const -1
                                      i32.add
                                      tee_local 7
                                      i32.const 8
                                      i32.gt_u
                                      set_local 16
                                      get_local 21
                                      f64.const 0x1.8p+6 (;=96;)
                                      f64.mul
                                      tee_local 21
                                      f64.abs
                                      f64.const 0x1p+31 (;=2.14748e+09;)
                                      f64.lt
                                      br_if 2 (;@15;)
                                      i32.const 255
                                      i32.const -2147483648
                                      i32.sub
                                      set_local 17
                                      get_local 16
                                      i32.eqz
                                      br_if 3 (;@14;)
                                      br 6 (;@11;)
                                    end
                                    i32.const 8355711
                                    set_local 16
                                    get_local 21
                                    i32.trunc_s/f64
                                    br_if 11 (;@5;)
                                  end
                                  call 2
                                  f64.const 0x1.8p+6 (;=96;)
                                  f64.mul
                                  tee_local 21
                                  f64.abs
                                  f64.const 0x1p+31 (;=2.14748e+09;)
                                  f64.lt
                                  br_if 2 (;@13;)
                                  i32.const -2147483648
                                  set_local 16
                                  br 3 (;@12;)
                                end
                                i32.const 255
                                get_local 21
                                i32.trunc_s/f64
                                i32.sub
                                set_local 17
                                get_local 16
                                br_if 3 (;@11;)
                              end
                              i32.const 4210943
                              set_local 16
                              block  ;; label = @14
                                block  ;; label = @15
                                  block  ;; label = @16
                                    get_local 7
                                    br_table 0 (;@16;) 5 (;@11;) 5 (;@11;) 5 (;@11;) 1 (;@15;) 5 (;@11;) 2 (;@14;) 5 (;@11;) 11 (;@5;) 0 (;@16;)
                                  end
                                  i32.const 6990400
                                  set_local 16
                                  get_local 2
                                  get_local 12
                                  get_local 18
                                  i32.mul
                                  i32.const 2
                                  i32.shr_u
                                  i32.const 3
                                  i32.and
                                  tee_local 18
                                  i32.const 18
                                  i32.add
                                  i32.lt_s
                                  br_if 10 (;@5;)
                                  get_local 2
                                  get_local 18
                                  i32.const 19
                                  i32.add
                                  i32.ge_s
                                  br_if 4 (;@11;)
                                  get_local 17
                                  i32.const 1
                                  i32.shl
                                  i32.const 3
                                  i32.div_s
                                  set_local 17
                                  br 4 (;@11;)
                                end
                                i32.const 11876885
                                i32.const 12365733
                                get_local 3
                                get_local 18
                                i32.add
                                i32.const 7
                                i32.and
                                select
                                i32.const 12365733
                                get_local 6
                                select
                                set_local 16
                                br 9 (;@5;)
                              end
                              get_local 18
                              i32.const -1
                              i32.add
                              i32.const 13
                              i32.gt_u
                              br_if 3 (;@10;)
                              get_local 4
                              i32.const 14
                              i32.ge_u
                              br_if 3 (;@10;)
                              get_local 5
                              get_local 13
                              get_local 18
                              i32.const -7
                              i32.add
                              get_local 18
                              i32.const 7
                              i32.lt_s
                              select
                              tee_local 16
                              get_local 5
                              get_local 16
                              i32.gt_s
                              select
                              i32.const 3
                              i32.rem_s
                              i32.const 5
                              i32.shl
                              i32.const 196
                              i32.add
                              set_local 16
                              call 2
                              f64.const 0x1p+5 (;=32;)
                              f64.mul
                              tee_local 21
                              f64.abs
                              f64.const 0x1p+31 (;=2.14748e+09;)
                              f64.lt
                              br_if 4 (;@9;)
                              i32.const -2147483648
                              set_local 18
                              br 5 (;@8;)
                            end
                            get_local 21
                            i32.trunc_s/f64
                            set_local 16
                          end
                          i32.const 255
                          get_local 16
                          i32.sub
                          set_local 17
                        end
                        get_local 17
                        i32.const 2
                        i32.div_s
                        get_local 17
                        get_local 2
                        i32.const 31
                        i32.gt_s
                        select
                        set_local 18
                        block  ;; label = @11
                          block  ;; label = @12
                            block  ;; label = @13
                              get_local 9
                              i32.const 8
                              i32.ne
                              br_if 0 (;@13;)
                              call 2
                              tee_local 21
                              get_local 21
                              f64.add
                              tee_local 21
                              f64.abs
                              f64.const 0x1p+31 (;=2.14748e+09;)
                              f64.lt
                              br_if 1 (;@12;)
                              i32.const -2147483648
                              set_local 16
                              br 2 (;@11;)
                            end
                            get_local 1
                            set_local 16
                            br 8 (;@4;)
                          end
                          get_local 21
                          i32.trunc_s/f64
                          set_local 16
                        end
                        get_local 18
                        i32.const 255
                        get_local 16
                        select
                        set_local 18
                        i32.const 5298487
                        i32.const 0
                        get_local 16
                        select
                        set_local 16
                        br 6 (;@4;)
                      end
                      call 2
                      tee_local 21
                      get_local 21
                      f64.add
                      tee_local 21
                      f64.abs
                      f64.const 0x1p+31 (;=2.14748e+09;)
                      f64.lt
                      br_if 2 (;@7;)
                      i32.const 6771249
                      set_local 16
                      i32.const -2147483648
                      br_if 4 (;@5;)
                      br 3 (;@6;)
                    end
                    get_local 21
                    i32.trunc_s/f64
                    set_local 18
                  end
                  get_local 16
                  get_local 18
                  i32.sub
                  set_local 17
                  i32.const 12359778
                  set_local 16
                  br 2 (;@5;)
                end
                i32.const 6771249
                set_local 16
                get_local 21
                i32.trunc_s/f64
                br_if 1 (;@5;)
              end
              get_local 17
              i32.const 150
              i32.const 0
              get_local 18
              i32.const 1
              i32.and
              i32.sub
              i32.const 100
              i32.and
              i32.sub
              i32.mul
              i32.const 100
              i32.div_s
              set_local 17
            end
            get_local 17
            i32.const 2
            i32.div_s
            get_local 17
            get_local 2
            i32.const 31
            i32.gt_s
            select
            set_local 18
          end
          get_local 14
          get_local 16
          i32.const 8
          i32.shr_u
          i32.const 255
          i32.and
          get_local 18
          i32.mul
          i32.const 255
          i32.div_s
          i32.const 8
          i32.shl
          get_local 16
          i32.const 255
          i32.and
          get_local 18
          i32.mul
          i32.const 255
          i32.div_s
          i32.or
          get_local 16
          i32.const 16
          i32.shr_u
          i32.const 255
          i32.and
          get_local 18
          i32.mul
          i32.const 255
          i32.div_s
          i32.const 16
          i32.shl
          i32.or
          i32.store
          get_local 12
          i32.const 3
          i32.add
          set_local 12
          get_local 13
          i32.const -1
          i32.add
          set_local 13
          get_local 14
          i32.const 4
          i32.add
          set_local 14
          get_local 15
          i32.const 16
          i32.lt_s
          br_if 0 (;@3;)
        end
        get_local 10
        i32.const 64
        i32.add
        set_local 10
        get_local 11
        i32.const 47
        i32.le_s
        br_if 0 (;@2;)
      end
      get_local 8
      i32.const 3072
      i32.add
      set_local 8
      get_local 0
      set_local 9
      get_local 0
      i32.const 16
      i32.lt_s
      br_if 0 (;@1;)
    end
    i32.const 0
    set_local 9
    block  ;; label = @1
      loop  ;; label = @2
        get_local 9
        tee_local 13
        i32.const 1
        i32.add
        set_local 9
        i32.const 0
        set_local 12
        loop  ;; label = @3
          get_local 12
          tee_local 16
          i32.const 1
          i32.add
          set_local 12
          get_local 16
          i32.const 6
          i32.shl
          get_local 13
          i32.or
          set_local 17
          get_local 16
          f64.convert_u/i32
          f64.const -0x1.04p+5 (;=-32.5;)
          f64.add
          f64.const 0x1.999999999999ap-2 (;=0.4;)
          f64.mul
          tee_local 21
          get_local 21
          f64.mul
          set_local 19
          i32.const 0
          set_local 18
          i32.const 0
          set_local 16
          loop  ;; label = @4
            call 2
            set_local 22
            get_local 17
            get_local 18
            i32.or
            tee_local 14
            i32.const 262143
            i32.gt_u
            br_if 3 (;@1;)
            get_local 16
            f64.convert_u/i32
            f64.const -0x1.04p+5 (;=-32.5;)
            f64.add
            f64.const 0x1.999999999999ap-2 (;=0.4;)
            f64.mul
            set_local 21
            get_local 14
            i32.const 2
            i32.shl
            i32.const 160016
            i32.add
            set_local 14
            block  ;; label = @5
              block  ;; label = @6
                get_local 22
                f64.const 0x1p+4 (;=16;)
                f64.mul
                tee_local 22
                f64.abs
                f64.const 0x1p+31 (;=2.14748e+09;)
                f64.lt
                br_if 0 (;@6;)
                i32.const -2147483648
                set_local 15
                br 1 (;@5;)
              end
              get_local 22
              i32.trunc_s/f64
              set_local 15
            end
            get_local 14
            get_local 15
            i32.store
            call 2
            set_local 20
            block  ;; label = @5
              get_local 19
              get_local 21
              get_local 21
              f64.mul
              f64.add
              tee_local 22
              call 4
              tee_local 21
              get_local 21
              f64.eq
              br_if 0 (;@5;)
              get_local 22
              call 4
              set_local 21
            end
            block  ;; label = @5
              get_local 21
              call 4
              tee_local 22
              get_local 22
              f64.eq
              br_if 0 (;@5;)
              get_local 21
              call 4
              set_local 22
            end
            get_local 16
            i32.const 1
            i32.add
            set_local 16
            block  ;; label = @5
              get_local 20
              get_local 22
              f64.const -0x1.999999999999ap-1 (;=-0.8;)
              f64.add
              f64.gt
              i32.eqz
              br_if 0 (;@5;)
              get_local 14
              i32.const 0
              i32.store
            end
            get_local 18
            i32.const 4096
            i32.add
            set_local 18
            get_local 16
            i32.const 64
            i32.lt_u
            br_if 0 (;@4;)
          end
          get_local 12
          i32.const 63
          i32.le_u
          br_if 0 (;@3;)
        end
        get_local 9
        i32.const 64
        i32.lt_u
        br_if 0 (;@2;)
      end
      i32.const 0
      set_local 18
      i32.const 19
      set_local 16
      loop  ;; label = @2
        get_local 16
        i32.const 255
        i32.store8
        get_local 16
        i32.const 4
        i32.add
        set_local 16
        get_local 18
        i32.const 1
        i32.add
        tee_local 18
        i32.const 40000
        i32.lt_s
        br_if 0 (;@2;)
      end
      return
    end
    )
  (func (;7;) (type 2)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64 f64 f64 f64 f64 f64 f64 f64 f64 f64 f64 f64 f64 f64 f64 f64 f64 f64 f64 f64 f64 f64 f64 f64 f64 f64 f64)
    block  ;; label = @1
      block  ;; label = @2
        call 1
        tee_local 37
        f64.abs
        f64.const 0x1p+63 (;=9.22337e+18;)
        f64.lt
        br_if 0 (;@2;)
        i64.const -9223372036854775808
        set_local 13
        br 1 (;@1;)
      end
      get_local 37
      i64.trunc_s/f64
      set_local 13
    end
    get_local 13
    i64.const 10000
    i64.rem_s
    f64.convert_s/i64
    f64.const 0x1.388p+13 (;=10000;)
    f64.div
    f64.const 0x1.921fb54442d18p+1 (;=3.14159;)
    f64.mul
    tee_local 37
    get_local 37
    f64.add
    call 3
    set_local 37
    block  ;; label = @1
      block  ;; label = @2
        call 1
        tee_local 35
        f64.abs
        f64.const 0x1p+63 (;=9.22337e+18;)
        f64.lt
        br_if 0 (;@2;)
        i64.const -9223372036854775808
        set_local 13
        br 1 (;@1;)
      end
      get_local 35
      i64.trunc_s/f64
      set_local 13
    end
    get_local 13
    i64.const 10000
    i64.rem_s
    f64.convert_s/i64
    f64.const 0x1.388p+13 (;=10000;)
    f64.div
    f64.const 0x1.921fb54442d18p+1 (;=3.14159;)
    f64.mul
    tee_local 35
    get_local 35
    f64.add
    call 0
    f64.const 0x1.999999999999ap-2 (;=0.4;)
    f64.mul
    tee_local 35
    call 0
    set_local 14
    get_local 35
    call 3
    set_local 15
    get_local 37
    f64.const 0x1.999999999999ap-2 (;=0.4;)
    f64.mul
    f64.const 0x1.921fb54442d18p+0 (;=1.5708;)
    f64.add
    tee_local 37
    call 0
    set_local 16
    get_local 37
    call 3
    set_local 17
    block  ;; label = @1
      block  ;; label = @2
        call 1
        tee_local 37
        f64.abs
        f64.const 0x1p+63 (;=9.22337e+18;)
        f64.lt
        br_if 0 (;@2;)
        i64.const -9223372036854775808
        set_local 13
        br 1 (;@1;)
      end
      get_local 37
      i64.trunc_s/f64
      set_local 13
    end
    block  ;; label = @1
      block  ;; label = @2
        get_local 13
        i64.const 10000
        i64.rem_s
        f64.convert_s/i64
        f64.const 0x1.388p+13 (;=10000;)
        f64.div
        f64.const 0x1p+6 (;=64;)
        f64.mul
        f64.const 0x1.04p+5 (;=32.5;)
        f64.add
        tee_local 18
        f64.abs
        f64.const 0x1p+31 (;=2.14748e+09;)
        f64.lt
        br_if 0 (;@2;)
        i32.const -2147483648
        set_local 7
        br 1 (;@1;)
      end
      get_local 18
      i32.trunc_s/f64
      set_local 7
    end
    get_local 18
    get_local 7
    f64.convert_s/i32
    f64.sub
    set_local 19
    i32.const 0
    set_local 4
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            loop  ;; label = @5
              get_local 4
              tee_local 7
              i32.const 1
              i32.add
              set_local 4
              get_local 17
              get_local 7
              f64.convert_s/i32
              tee_local 20
              f64.const -0x1.9p+6 (;=-100;)
              f64.add
              f64.const 0x1.9p+7 (;=200;)
              f64.div
              tee_local 37
              f64.mul
              set_local 22
              get_local 16
              get_local 37
              f64.mul
              set_local 21
              i32.const 0
              set_local 5
              loop  ;; label = @6
                get_local 14
                get_local 5
                f64.convert_s/i32
                tee_local 23
                f64.const -0x1.9p+6 (;=-100;)
                f64.add
                f64.const 0x1.9p+7 (;=200;)
                f64.div
                tee_local 37
                f64.mul
                get_local 15
                f64.sub
                tee_local 24
                f64.neg
                get_local 24
                get_local 24
                f64.const 0x0p+0 (;=0;)
                f64.lt
                tee_local 1
                select
                set_local 28
                get_local 16
                get_local 14
                get_local 15
                get_local 37
                f64.mul
                f64.add
                tee_local 37
                f64.mul
                get_local 22
                f64.sub
                tee_local 26
                f64.neg
                get_local 26
                get_local 26
                f64.const 0x0p+0 (;=0;)
                f64.lt
                tee_local 2
                select
                set_local 29
                get_local 21
                get_local 17
                get_local 37
                f64.mul
                f64.add
                tee_local 25
                f64.neg
                get_local 25
                get_local 25
                f64.const 0x0p+0 (;=0;)
                f64.lt
                tee_local 0
                select
                set_local 27
                get_local 5
                i32.const 1
                i32.add
                set_local 5
                f64.const 0x1p+5 (;=32;)
                set_local 39
                i32.const 255
                set_local 11
                i32.const 0
                set_local 12
                i32.const 0
                set_local 10
                i32.const 0
                set_local 6
                loop  ;; label = @7
                  f64.const 0x1p-1 (;=0.5;)
                  set_local 37
                  block  ;; label = @8
                    block  ;; label = @9
                      block  ;; label = @10
                        get_local 6
                        i32.const 1
                        i32.eq
                        tee_local 8
                        br_if 0 (;@10;)
                        get_local 6
                        i32.const 2
                        i32.ne
                        br_if 1 (;@9;)
                        get_local 29
                        set_local 35
                        get_local 2
                        set_local 7
                        get_local 26
                        set_local 36
                        br 2 (;@8;)
                      end
                      get_local 28
                      set_local 35
                      get_local 1
                      set_local 7
                      get_local 24
                      set_local 36
                      br 1 (;@8;)
                    end
                    get_local 27
                    set_local 35
                    get_local 0
                    set_local 7
                    get_local 25
                    set_local 36
                    get_local 19
                    set_local 37
                  end
                  f64.const 0x1p+0 (;=1;)
                  get_local 35
                  f64.div
                  tee_local 30
                  f64.const 0x1p+0 (;=1;)
                  get_local 37
                  f64.sub
                  get_local 37
                  get_local 36
                  f64.const 0x0p+0 (;=0;)
                  f64.gt
                  select
                  tee_local 35
                  f64.mul
                  set_local 38
                  get_local 26
                  get_local 30
                  f64.mul
                  tee_local 33
                  get_local 35
                  f64.mul
                  f64.const 0x1.04p+5 (;=32.5;)
                  f64.add
                  set_local 37
                  get_local 24
                  get_local 30
                  f64.mul
                  tee_local 32
                  get_local 35
                  f64.mul
                  f64.const 0x1.04p+5 (;=32.5;)
                  f64.add
                  set_local 36
                  get_local 18
                  get_local 25
                  get_local 30
                  f64.mul
                  tee_local 31
                  get_local 35
                  f64.mul
                  f64.add
                  set_local 35
                  block  ;; label = @8
                    get_local 7
                    i32.eqz
                    br_if 0 (;@8;)
                    block  ;; label = @9
                      block  ;; label = @10
                        get_local 6
                        i32.const 2
                        i32.eq
                        br_if 0 (;@10;)
                        get_local 8
                        br_if 1 (;@9;)
                        get_local 6
                        br_if 2 (;@8;)
                        get_local 35
                        f64.const -0x1p+0 (;=-1;)
                        f64.add
                        set_local 35
                        br 2 (;@8;)
                      end
                      get_local 37
                      f64.const -0x1p+0 (;=-1;)
                      f64.add
                      set_local 37
                      br 1 (;@8;)
                    end
                    get_local 36
                    f64.const -0x1p+0 (;=-1;)
                    f64.add
                    set_local 36
                  end
                  block  ;; label = @8
                    get_local 38
                    get_local 39
                    f64.ge
                    get_local 38
                    get_local 38
                    f64.ne
                    get_local 39
                    get_local 39
                    f64.ne
                    i32.or
                    i32.or
                    br_if 0 (;@8;)
                    get_local 6
                    i32.const 2
                    i32.add
                    i32.const 3
                    i32.rem_s
                    i32.const -12750
                    i32.mul
                    i32.const 65025
                    i32.add
                    i32.const 255
                    i32.div_s
                    set_local 3
                    loop  ;; label = @9
                      block  ;; label = @10
                        block  ;; label = @11
                          get_local 35
                          f64.abs
                          f64.const 0x1p+31 (;=2.14748e+09;)
                          f64.lt
                          br_if 0 (;@11;)
                          i32.const -2147483648
                          set_local 7
                          br 1 (;@10;)
                        end
                        get_local 35
                        i32.trunc_s/f64
                        set_local 7
                      end
                      get_local 7
                      i32.const 63
                      i32.and
                      set_local 7
                      block  ;; label = @10
                        block  ;; label = @11
                          get_local 36
                          f64.abs
                          f64.const 0x1p+31 (;=2.14748e+09;)
                          f64.lt
                          br_if 0 (;@11;)
                          i32.const -2147483648
                          set_local 8
                          br 1 (;@10;)
                        end
                        get_local 36
                        i32.trunc_s/f64
                        set_local 8
                      end
                      get_local 8
                      i32.const 6
                      i32.shl
                      i32.const 4032
                      i32.and
                      get_local 7
                      i32.or
                      set_local 7
                      block  ;; label = @10
                        block  ;; label = @11
                          get_local 37
                          f64.abs
                          f64.const 0x1p+31 (;=2.14748e+09;)
                          f64.lt
                          br_if 0 (;@11;)
                          i32.const -2147483648
                          set_local 8
                          br 1 (;@10;)
                        end
                        get_local 37
                        i32.trunc_s/f64
                        set_local 8
                      end
                      block  ;; label = @10
                        get_local 7
                        get_local 8
                        i32.const 12
                        i32.shl
                        i32.const 258048
                        i32.and
                        i32.or
                        i32.const 2
                        i32.shl
                        i32.const 160016
                        i32.add
                        i32.load
                        tee_local 7
                        i32.const 1
                        i32.lt_s
                        br_if 0 (;@10;)
                        block  ;; label = @11
                          block  ;; label = @12
                            get_local 36
                            f64.const 0x1p+4 (;=16;)
                            f64.mul
                            tee_local 34
                            f64.abs
                            f64.const 0x1p+31 (;=2.14748e+09;)
                            f64.lt
                            br_if 0 (;@12;)
                            i32.const -2147483648
                            set_local 8
                            br 1 (;@11;)
                          end
                          get_local 34
                          i32.trunc_s/f64
                          set_local 8
                        end
                        block  ;; label = @11
                          block  ;; label = @12
                            block  ;; label = @13
                              block  ;; label = @14
                                block  ;; label = @15
                                  block  ;; label = @16
                                    get_local 35
                                    get_local 37
                                    f64.add
                                    f64.const 0x1p+4 (;=16;)
                                    f64.mul
                                    tee_local 34
                                    f64.abs
                                    f64.const 0x1p+31 (;=2.14748e+09;)
                                    f64.lt
                                    br_if 0 (;@16;)
                                    i32.const -2147483648
                                    set_local 9
                                    get_local 6
                                    i32.const 1
                                    i32.eq
                                    br_if 1 (;@15;)
                                    br 2 (;@14;)
                                  end
                                  get_local 34
                                  i32.trunc_s/f64
                                  set_local 9
                                  get_local 6
                                  i32.const 1
                                  i32.ne
                                  br_if 1 (;@14;)
                                end
                                get_local 37
                                f64.const 0x1p+4 (;=16;)
                                f64.mul
                                tee_local 34
                                f64.abs
                                f64.const 0x1p+31 (;=2.14748e+09;)
                                f64.lt
                                br_if 1 (;@13;)
                                i32.const -2147483648
                                set_local 8
                                br 2 (;@12;)
                              end
                              get_local 8
                              i32.const 15
                              i32.and
                              i32.const 16
                              i32.or
                              set_local 8
                              get_local 9
                              i32.const 15
                              i32.and
                              set_local 9
                              br 2 (;@11;)
                            end
                            get_local 34
                            i32.trunc_s/f64
                            set_local 8
                          end
                          block  ;; label = @12
                            block  ;; label = @13
                              get_local 35
                              f64.const 0x1p+4 (;=16;)
                              f64.mul
                              tee_local 34
                              f64.abs
                              f64.const 0x1p+31 (;=2.14748e+09;)
                              f64.lt
                              br_if 0 (;@13;)
                              i32.const -2147483648
                              set_local 9
                              br 1 (;@12;)
                            end
                            get_local 34
                            i32.trunc_s/f64
                            set_local 9
                          end
                          get_local 8
                          i32.const 15
                          i32.and
                          set_local 8
                          get_local 9
                          i32.const 15
                          i32.and
                          set_local 9
                          get_local 32
                          f64.const 0x0p+0 (;=0;)
                          f64.ge
                          get_local 32
                          get_local 32
                          f64.ne
                          i32.or
                          br_if 0 (;@11;)
                          get_local 8
                          i32.const 32
                          i32.or
                          set_local 8
                        end
                        get_local 8
                        i32.const 4
                        i32.shl
                        get_local 9
                        i32.or
                        get_local 7
                        i32.const 768
                        i32.mul
                        i32.add
                        tee_local 7
                        i32.const 12287
                        i32.gt_u
                        br_if 6 (;@4;)
                        get_local 7
                        i32.const 2
                        i32.shl
                        i32.const 1208592
                        i32.add
                        i32.load
                        tee_local 7
                        i32.const 1
                        i32.lt_s
                        br_if 0 (;@10;)
                        block  ;; label = @11
                          block  ;; label = @12
                            get_local 38
                            f64.const 0x1p-5 (;=0.03125;)
                            f64.mul
                            f64.const 0x1.fep+7 (;=255;)
                            f64.mul
                            tee_local 39
                            f64.abs
                            f64.const 0x1p+31 (;=2.14748e+09;)
                            f64.lt
                            br_if 0 (;@12;)
                            i32.const -2147483648
                            set_local 8
                            br 1 (;@11;)
                          end
                          get_local 39
                          i32.trunc_s/f64
                          set_local 8
                        end
                        i32.const 255
                        get_local 8
                        i32.sub
                        set_local 10
                        get_local 38
                        set_local 39
                        get_local 3
                        set_local 11
                        get_local 7
                        set_local 12
                      end
                      get_local 33
                      get_local 37
                      f64.add
                      set_local 37
                      get_local 32
                      get_local 36
                      f64.add
                      set_local 36
                      get_local 31
                      get_local 35
                      f64.add
                      set_local 35
                      get_local 30
                      get_local 38
                      f64.add
                      tee_local 38
                      get_local 39
                      f64.lt
                      br_if 0 (;@9;)
                    end
                  end
                  get_local 6
                  i32.const 1
                  i32.add
                  tee_local 6
                  i32.const 3
                  i32.lt_s
                  br_if 0 (;@7;)
                end
                get_local 11
                get_local 10
                i32.mul
                tee_local 8
                get_local 12
                i32.const 255
                i32.and
                i32.mul
                i32.const 65025
                i32.div_s
                set_local 6
                get_local 8
                get_local 12
                i32.const 8
                i32.shr_u
                i32.const 255
                i32.and
                i32.mul
                i32.const 65025
                i32.div_s
                set_local 9
                block  ;; label = @7
                  block  ;; label = @8
                    get_local 20
                    get_local 23
                    f64.const 0x1.9p+7 (;=200;)
                    f64.mul
                    f64.add
                    tee_local 37
                    f64.abs
                    f64.const 0x1p+31 (;=2.14748e+09;)
                    f64.lt
                    br_if 0 (;@8;)
                    i32.const -2147483648
                    set_local 7
                    br 1 (;@7;)
                  end
                  get_local 37
                  i32.trunc_s/f64
                  set_local 7
                end
                get_local 7
                i32.const 2
                i32.shl
                tee_local 7
                i32.const 160000
                i32.ge_u
                br_if 3 (;@3;)
                get_local 7
                i32.const 16
                i32.add
                get_local 8
                get_local 12
                i32.const 16
                i32.shr_u
                i32.const 255
                i32.and
                i32.mul
                i32.const 65025
                i32.div_s
                i32.store8
                get_local 7
                i32.const 1
                i32.or
                tee_local 8
                i32.const 159999
                i32.gt_u
                br_if 4 (;@2;)
                get_local 8
                i32.const 16
                i32.add
                get_local 9
                i32.store8
                get_local 7
                i32.const 2
                i32.or
                tee_local 7
                i32.const 159999
                i32.gt_u
                br_if 5 (;@1;)
                get_local 7
                i32.const 16
                i32.add
                get_local 6
                i32.store8
                get_local 5
                i32.const 200
                i32.lt_s
                br_if 0 (;@6;)
              end
              get_local 4
              i32.const 200
              i32.lt_s
              br_if 0 (;@5;)
            end
            return
          end
        end
      end
    end
  )
  (memory (;0;) 36)
  (export "memory" (memory 0))
  (export "getPixelAddress" (func 5))
  (export "init" (func 6))
  (export "renderMinecraft" (func 7))
)
