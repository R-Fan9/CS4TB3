(module
  (import "P0lib" "write" (func $write (param i32)))
  (import "P0lib" "read" (func $read (result i32)))
  (global $x (mut i32) i32.const 0)
  (global $y (mut i32) i32.const 0)
  (func $max
    call $read
    global.set $x
    call $read
    global.set $y
    global.get $x
    global.get $y
    i32.gt_s
    if
       global.get $x
       call $write
    else
       global.get $y
       call $write
    end
  )
  (start $max)
)
