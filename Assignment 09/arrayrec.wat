(module
(import "P0lib" "write" (func $write (param i32)))
(import "P0lib" "writeln" (func $writeln))
(import "P0lib" "read" (func $read (result i32)))
(global $x (mut i32) i32.const 0)
(global $_memsize (mut i32) i32.const 64)
(func $program
(local $0 i32)
i32.const 9
global.set $x
i32.const 60
i32.const 5
i32.store
i32.const 60
i32.load
call $write
i32.const 0
i32.const 3
i32.store
global.get $x
i32.const 8
i32.sub
i32.const 1
i32.sub
i32.const 4
i32.mul
i32.const 0
i32.add
i32.load
call $write
global.get $x
i32.const 3
i32.div_s
i32.const 1
i32.sub
i32.const 4
i32.mul
i32.const 32
i32.add
i32.const 9
i32.store
i32.const 40
i32.load
call $write
global.get $x
i32.const 2
i32.sub
i32.const 1
i32.sub
i32.const 4
i32.mul
i32.const 0
i32.add
i32.const 7
i32.store
global.get $x
i32.const 3
i32.sub
i32.const 1
i32.sub
i32.const 4
i32.mul
i32.const 32
i32.add
i32.const 7
i32.store
i32.const 24
i32.load
call $write
i32.const 52
i32.load
call $write
)
(memory 1)
(start $program)
)