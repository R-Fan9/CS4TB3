(module
 (import "P0lib" "write" (func $write (param i32)))
 (import "P0lib" "writeln" (func $writeln))
 (import "P0lib" "read" (func $read (result i32)))
 (import "P0lib" "seed" (func $seed (result i32)))
 (global $r (mut i32) (i32.const 0))
 (func $randint (param $bound i32) (result i32)
    (local $rand i32)
    (local $a i32)
    (local $c i32)
    (local $m i32)
    i32.const 16807
    local.set $a
    i32.const 11
    local.set $c
    i32.const 65535
    local.set $m
  
    local.get $c
    local.get $a
    global.get $r
    i32.mul
    i32.add
    local.get $m
    i32.rem_s
    global.set $r
  
    global.get $r
    local.get $bound
    i32.div_s
    local.set $rand
    local.get $rand
 )
 (func $gcd (param $x i32) (param $y i32) (result i32)
    (local $d i32)
    loop $label0
      local.get $x
      local.get $y
      i32.ne
      if
        local.get $x
        local.get $y
        i32.gt_s
        if
          local.get $x
          local.get $y
          i32.sub
          local.set $x
        else
          local.get $y
          local.get $x
          i32.sub
          local.set $y
        end
        br $label0
      end
    end
    local.get $x
    local.set $d
    local.get $d
 )
 (func $randgcd
    (local $x i32)
    (local $y i32)
    (local $d i32)
  
    call $seed
    global.set $r

    i32.const 100
    call $randint
    local.set $x
    local.get $x
    call $write

    i32.const 100
    call $randint
    local.set $y
    local.get $y
    call $write

    local.get $x
    local.get $y
    call $gcd
    local.set $d
    local.get $d
    call $write
 )
 (memory 1)
 (start $randgcd)
)
