(module
(import "P0lib" "write" (func $write (param i32)))
(import "P0lib" "writeln" (func $writeln))
(import "P0lib" "read" (func $read (result i32)))
(func $quotrem (param $x i32) (param $y i32) (result i32) (result i32)
(local $q i32)
(local $r i32)
(local $0 i32)
i32.const 0
local.get $x
local.set $r
local.set $q
loop
local.get $r
local.get $y
i32.ge_s
if
local.get $r
local.get $y
i32.sub
local.get $q
i32.const 1
i32.add
local.set $q
local.set $r
br 1
end
end
local.get $q
local.get $r
)
(global $_memsize (mut i32) i32.const 0)
(func $program
(local $x i32)
(local $y i32)
(local $q i32)
(local $r i32)
(local $0 i32)
call $read
local.set $x
call $read
local.set $y
local.get $x
local.get $y
call $quotrem
local.set $r
local.set $q
local.get $q
local.get $r
i32.eq
i32.eqz
if
local.get $q
call $write
end
)
(memory 1)
(start $program)
)