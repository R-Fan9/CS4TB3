(module
(import "P0lib" "write" (func $write (param i32)))
(import "P0lib" "writeln" (func $writeln))
(import "P0lib" "read" (func $read (result i32)))
(global $_memsize (mut i32) i32.const 0)
(func $program
(local $a i32)
(local $b i32)
(local $i i32)
(local $0 i32)
i32.const 1
i32.const 3
local.set $0
i32.const 1
local.get $0
i32.shl
i32.const 5
local.set $0
i32.const 1
local.get $0
i32.shl
i32.or
i32.const 7
local.set $0
i32.const 1
local.get $0
i32.shl
i32.or
local.set $a
local.set $i
local.get $i
local.set $0
i32.const 1
local.get $0
i32.shl
local.get $a
i32.and
i32.eqz
if
i32.const 7
local.set $0
i32.const 1
local.get $0
i32.shl
i32.const 9
local.set $0
i32.const 1
local.get $0
i32.shl
i32.or
i32.const 0xffe
i32.xor
local.get $a
i32.and
local.set $a
end
loop
local.get $i
i32.const 12
i32.lt_s
if
local.get $i
local.set $0
i32.const 1
local.get $0
i32.shl
local.get $a
i32.and
if
local.get $i
call $write
end
local.get $i
i32.const 1
i32.add
local.set $i
br 1
end
end
)
(memory 1)
(start $program)
)