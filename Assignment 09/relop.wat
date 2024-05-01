(module
(import "P0lib" "write" (func $write (param i32)))
(import "P0lib" "writeln" (func $writeln))
(import "P0lib" "read" (func $read (result i32)))
(func $q (param $b i32) 
(local $0 i32)
local.get $b
i32.const 0
i32.eq
local.set $b
)
(global $_memsize (mut i32) i32.const 0)
(func $program
(local $x i32)
(local $0 i32)
local.get $x
i32.const 7
i32.gt_s
call $q
)
(memory 1)
(start $program)
)