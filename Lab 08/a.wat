(module
  (import "P0lib" "write" (func $write (param i32)))
  (func $program
    i32.const 3
    i32.const 4
    i32.add
    i32.add
  )
  (start $program)
)
