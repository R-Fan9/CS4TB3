(module
(import "P0lib" "write" (func $write (param i32)))
(import "P0lib" "writeln" (func $writeln))
(import "P0lib" "read" (func $read (result i32)))
(func $q (param $b i32) (param $c i32) 
(local $0 i32)
local.get $b
call $write
local.get $c
call $write
)
(func $r  (result i32)
(local $d i32)
(local $0 i32)
i32.const 8
i32.const 9
i32.store
i32.const 5
local.set $d
local.get $d
)
(global $_memsize (mut i32) i32.const 40)
(func $program
(local $x i32)
(local $0 i32)
i32.const 4
i32.const 7
i32.store
i32.const 3
i32.const 4
i32.load
call $q
call $r
local.set $x
local.get $x
call $write
i32.const 8
i32.load
call $write
)
(memory 1)
(start $program)
)