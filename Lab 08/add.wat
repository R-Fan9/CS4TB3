(module
  (import "P0lib" "write" (func $write (param i32)))
  (global $x (mut i32) i32.const 3)
  (global $y (mut i32) i32.const 4)
  (func $program
    global.get $x
    global.get $y
    i32.add
    call $write
  )
  (start $program)
)
