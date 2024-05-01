(module
  (import "P0lib" "write" (func $write (param i32)))
  (global $x (mut i32) i32.const 5)
  (global $y (mut i32) i32.const 0)
  (func $program
    global.get $x
    global.get $y
    i32.div_s
    call $write
  )
  (start $program)
)
