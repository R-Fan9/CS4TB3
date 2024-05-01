(module
(import "P0lib" "write" (func $write (param i32)))
(import "P0lib" "writeln" (func $writeln))
(import "P0lib" "read" (func $read (result i32)))
(global $_memsize (mut i32) i32.const 20)
(func $program
(local $i i32)
(local $x i32)
(local $0 i32)
call $read
local.set $x
i32.const 0
local.set $i
loop
local.get $i
i32.const 5
i32.lt_s
if
local.get $i
i32.const 1
i32.add
local.set $i
local.get $i
i32.const 1
i32.sub
i32.const 4
i32.mul
i32.const 0
i32.add
call $read
i32.store
br 1
end
end
loop
local.get $i
i32.const 0
i32.gt_s
if (result i32)
local.get $i
i32.const 1
i32.sub
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
i32.sub
local.set $i
br 1
end
end
call $writeln
local.get $i
call $write
)
(memory 1)
(start $program)
)