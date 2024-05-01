(module
(import "P0lib" "write" (func $write (param i32)))
(import "P0lib" "writeln" (func $writeln))
(import "P0lib" "read" (func $read (result i32)))
(func $elements (param $s i32) 
(local $i i32)
(local $0 i32)
call $writeln
i32.const 0
local.set $i
loop
local.get $i
i32.const 32
i32.lt_s
if
local.get $i
local.set $0
i32.const 1
local.get $0
i32.shl
local.get $s
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
(func $difference (param $s i32) (param $t i32) (result i32)
(local $u i32)
(local $0 i32)
local.get $t
i32.const 0x7fe
i32.xor
local.get $s
i32.and
local.set $u
local.get $u
)
(global $_memsize (mut i32) i32.const 0)
(func $program
(local $s i32)
(local $0 i32)
i32.const 3
local.set $0
i32.const 1
local.get $0
i32.shl
local.set $s
local.get $s
call $elements
i32.const 1
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
local.get $s
i32.or
local.set $s
local.get $s
call $elements
local.get $s
i32.const 0x7fe
i32.xor
local.set $s
local.get $s
call $elements
i32.const 5
local.set $0
i32.const 1
local.get $0
i32.shl
i32.const 7
local.set $0
i32.const 1
local.get $0
i32.shl
i32.or
i32.const 9
local.set $0
i32.const 1
local.get $0
i32.shl
i32.or
local.get $s
i32.and
local.set $s
local.get $s
call $elements
local.get $s
i32.const 7
local.set $0
i32.const 1
local.get $0
i32.shl
i32.const 8
local.set $0
i32.const 1
local.get $0
i32.shl
i32.or
i32.const 9
local.set $0
i32.const 1
local.get $0
i32.shl
i32.or
call $difference
local.set $s
local.get $s
call $elements
call $writeln
local.get $s
local.tee $0
local.get $0
i32.const 2
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
i32.const 20
local.set $0
i32.const 1
local.get $0
i32.shl
i32.or
i32.and
i32.eq
if
local.get $s
i32.popcnt
call $write
end
i32.const 2
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
local.tee $0
local.get $0
local.get $s
i32.and
i32.eq
if
i32.const -1
call $write
else
i32.const -2
call $write
end
)
(memory 1)
(start $program)
)