(module
(import "P0lib" "write" (func $write (param i32)))
(import "P0lib" "writeln" (func $writeln))
(import "P0lib" "read" (func $read (result i32)))
(global $y (mut i32) i32.const 0)
(global $b (mut i32) i32.const 0)
(global $_memsize (mut i32) i32.const 77)
(func $program
(local $0 i32)
global.get $y
i32.const 3
i32.sub
i32.const 11
i32.mul
i32.const 0
i32.add
i32.const 5
i32.const 1
i32.sub
i32.const 1
i32.mul
i32.add
i32.const 0
i32.store
global.get $y
i32.const 3
i32.sub
i32.const 11
i32.mul
i32.const 0
i32.add
global.get $y
i32.const 1
i32.add
i32.const 1
i32.sub
i32.const 1
i32.mul
i32.add
i32.load
global.set $b
)
(memory 1)
(start $program)
)