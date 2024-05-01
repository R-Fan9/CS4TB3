(module
(import "P0lib" "write" (func $write (param i32)))
(import "P0lib" "writeln" (func $writeln))
(import "P0lib" "read" (func $read (result i32)))
(global $g (mut i32) i32.const 0)
(func $q (param $v i32) 
(local $l i32)
(local $0 i32)
i32.const 9
local.set $l
local.get $l
local.get $v
i32.gt_s
if
local.get $l
call $write
else
global.get $g
call $write
end
)
(global $_memsize (mut i32) i32.const 0)
(func $program
(local $0 i32)
i32.const 5
global.set $g
i32.const 7
call $q
)
(memory 1)
(start $program)
)