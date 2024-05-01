(module
(import "P0lib" "write" (func $write (param i32)))
(import "P0lib" "writeln" (func $writeln))
(import "P0lib" "read" (func $read (result i32)))
(func $index (param $x i32) (result i32)
(local $i i32)
(local $0 i32)
i32.const 0
local.set $i
loop
local.get $i
i32.const 4
i32.lt_s
if (result i32)
local.get $i
i32.const 4
i32.mul
i32.const 0
i32.add
i32.load
local.get $x
i32.ne
else
i32.const 0
end
if
local.get $i
i32.const 1
i32.add
local.set $i
br 1
end
end
local.get $i
)
(global $_memsize (mut i32) i32.const 16)
(func $program
(local $x i32)
(local $0 i32)
i32.const 0
i32.const 3
i32.store
i32.const 4
i32.const 5
i32.store
i32.const 8
i32.const 7
i32.store
i32.const 12
i32.const 9
i32.store
call $read
local.set $x
local.get $x
call $index
local.set $x
local.get $x
call $write
)
(memory 1)
(start $program)
)