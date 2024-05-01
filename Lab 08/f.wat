(module
  (import "P0lib" "write" (func $write (param i32)))
  (func $program
    i32.const 0
    i32.const 3
    i32.store offset=0
    i32.const 0
    i32.const 5
    i32.store offset=4
    i32.const -4
    i32.load offset=0
    i32.const 4
    i32.load offset=0
    i32.add
    call $write
  )
  (memory 1)
  (start $program)
)
