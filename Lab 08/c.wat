(module
  (import "P0lib" "write" (func $write (param i32)))
  (global $x (mut i32) i32.const 3)
  (global $y (mut i32) i32.const 5)
  (func $program
    global.get $x
    global.get $y
    i32.gt_s
    if (result i32)
      global.get $x
    else
      global.get $y
    end
    call $write
  )
  (start $program)
)
