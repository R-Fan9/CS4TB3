(module
(import "P0lib" "write" (func $write (param i32)))
(import "P0lib" "writeln" (func $writeln))
(import "P0lib" "read" (func $read (result i32)))
(global $_memsize (mut i32) i32.const 20)
(func $program
(local $i i32)
(local $0 i32)
i32.const 0
i32.const 3
i32.store
i32.const 4
i32.const 7
i32.store
i32.const 8
i32.const 5
i32.store
i32.const 12
i32.const 9
i32.store
i32.const 16
i32.const 7
i32.store
i32.const 1
local.set $i
loop
local.get $i
i32.const 5
i32.le_s
if
local.get $i
i32.const 1
i32.sub
i32.const 4
i32.mul
i32.const 0
i32.add
i32.load
i32.const 7
i32.eq
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