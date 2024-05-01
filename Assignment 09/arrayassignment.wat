(module
(import "P0lib" "write" (func $write (param i32)))
(import "P0lib" "writeln" (func $writeln))
(import "P0lib" "read" (func $read (result i32)))
(global $_memsize (mut i32) i32.const 72)
(func $program
(local $0 i32)
i32.const 40
i32.const 3
i32.store
i32.const 44
i32.const 5
i32.store
i32.const 8
i32.const 40
i32.const 32
memory.copy
i32.const 8
i32.load
call $write
i32.const 12
i32.load
call $write
i32.const 16
i32.load
call $write
)
(memory 1)
(start $program)
)