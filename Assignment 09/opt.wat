(module
(import "P0lib" "write" (func $write (param i32)))
(import "P0lib" "writeln" (func $writeln))
(import "P0lib" "read" (func $read (result i32)))
(global $_memsize (mut i32) i32.const 0)
(func $program
(local $x i32)
(local $0 i32)
i32.const 5
local.set $x
local.get $x
i32.const 0
i32.add
local.set $x
i32.const 0
local.get $x
i32.add
local.set $x
local.get $x
i32.const 1
i32.mul
local.set $x
i32.const 1
local.get $x
i32.mul
local.set $x
local.get $x
i32.const 3
i32.add
local.set $x
i32.const 3
local.get $x
i32.add
local.set $x
)
(memory 1)
(start $program)
)