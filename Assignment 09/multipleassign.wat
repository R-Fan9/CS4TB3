(module
(import "P0lib" "write" (func $write (param i32)))
(import "P0lib" "writeln" (func $writeln))
(import "P0lib" "read" (func $read (result i32)))
(func $swap (param $x0 i32) (param $y0 i32) (result i32) (result i32)
(local $x1 i32)
(local $y1 i32)
(local $0 i32)
local.get $y0
local.get $x0
local.set $y1
local.set $x1
local.get $x1
local.get $y1
)
(global $_memsize (mut i32) i32.const 0)
(func $program
(local $x i32)
(local $y i32)
(local $0 i32)
i32.const 5
i32.const 7
call $swap
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