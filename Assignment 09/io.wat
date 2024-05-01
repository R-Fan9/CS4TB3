(module
(import "P0lib" "write" (func $write (param i32)))
(import "P0lib" "writeln" (func $writeln))
(import "P0lib" "read" (func $read (result i32)))
(global $_memsize (mut i32) i32.const 0)
(func $program
(local $x i32)
(local $0 i32)
call $read
local.set $x
i32.const 3
local.get $x
i32.mul
local.set $x
local.get $x
call $write
call $writeln
local.get $x
i32.const 5
i32.mul
call $write
)
(memory 1)
(start $program)
)