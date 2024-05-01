(module
(import "P0lib" "write" (func $write (param i32)))
(import "P0lib" "writeln" (func $writeln))
(import "P0lib" "read" (func $read (result i32)))
(global $x (mut i32) i32.const 0)
(global $y (mut i32) i32.const 0)
(func $q  
(local $x i32)
(local $0 i32)
i32.const 3
local.set $x
i32.const 1
if
local.get $x
global.set $y
else
i32.const 7
global.set $y
end
global.get $y
call $write
i32.const 0
if
local.get $x
global.set $y
else
i32.const 7
global.set $y
end
global.get $y
call $write
i32.const 1
if
local.get $x
global.set $y
else
i32.const 7
global.set $y
end
global.get $y
call $write
i32.const 0
if
local.get $x
global.set $y
else
i32.const 7
global.set $y
end
global.get $y
call $write
i32.const 0
if
i32.const 5
call $write
else
i32.const 9
call $write
end
)
(global $_memsize (mut i32) i32.const 0)
(func $program
(local $0 i32)
i32.const 7
global.set $x
call $q
global.get $x
call $write
)
(memory 1)
(start $program)
)