(module
(import "P0lib" "write" (func $write (param i32)))
(import "P0lib" "writeln" (func $writeln))
(import "P0lib" "read" (func $read (result i32)))
(global $_memsize (mut i32) i32.const 32)
(func $program
(local $x i32)
(local $y i32)
(local $0 i32)
i32.const 4
i32.const 5
i32.store
i32.const 4
i32.load
i32.const 7
local.set $y
local.set $x
local.get $y
local.get $x
local.set $y
local.set $x
local.get $x
call $write
local.get $y
call $write
)
(memory 1)
(start $program)
)