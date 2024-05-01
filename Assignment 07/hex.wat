(module
(import "P0lib" "write" (func $write (param i32)))
(import "P0lib" "writeln" (func $writeln))
(import "P0lib" "read" (func $read (result i32)))
(global $_memsize (mut i32) i32.const 0)
(func $program
(local $0 i32)
i32.const 0
if
i32.const 12648430
call $write
else
i32.const 61453
call $write
end
)
(memory 1)
(start $program)
)