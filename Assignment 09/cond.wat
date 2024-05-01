(module
(import "P0lib" "write" (func $write (param i32)))
(import "P0lib" "writeln" (func $writeln))
(import "P0lib" "read" (func $read (result i32)))
(global $_memsize (mut i32) i32.const 0)
(func $program
(local $x i32)
(local $y i32)
(local $z i32)
(local $b i32)
(local $t i32)
(local $f i32)
(local $0 i32)
i32.const 7
local.set $x
i32.const 9
local.set $y
i32.const 11
local.set $z
i32.const 1
local.set $t
i32.const 0
local.set $f
i32.const 1
if
i32.const 7
call $write
else
i32.const 9
call $write
end
i32.const 0
if
i32.const 7
call $write
else
i32.const 9
call $write
end
local.get $t
if
i32.const 7
call $write
else
i32.const 9
call $write
end
local.get $f
if
i32.const 7
call $write
else
i32.const 9
call $write
end
local.get $t
i32.eqz
if
i32.const 7
call $write
else
i32.const 9
call $write
end
local.get $f
i32.eqz
if
i32.const 7
call $write
else
i32.const 9
call $write
end
local.get $t
if (result i32)
i32.const 1
else
local.get $t
end
if
i32.const 7
call $write
else
i32.const 9
call $write
end
local.get $t
if (result i32)
i32.const 1
else
local.get $f
end
if
i32.const 7
call $write
else
i32.const 9
call $write
end
local.get $f
if (result i32)
i32.const 1
else
local.get $t
end
if
i32.const 7
call $write
else
i32.const 9
call $write
end
local.get $f
if (result i32)
i32.const 1
else
local.get $f
end
if
i32.const 7
call $write
else
i32.const 9
call $write
end
local.get $t
if (result i32)
local.get $t
else
i32.const 0
end
if
i32.const 7
call $write
else
i32.const 9
call $write
end
local.get $t
if (result i32)
local.get $f
else
i32.const 0
end
if
i32.const 7
call $write
else
i32.const 9
call $write
end
local.get $f
if (result i32)
local.get $t
else
i32.const 0
end
if
i32.const 7
call $write
else
i32.const 9
call $write
end
local.get $f
if (result i32)
local.get $f
else
i32.const 0
end
if
i32.const 7
call $write
else
i32.const 9
call $write
end
call $writeln
i32.const 1
local.set $b
local.get $b
if
i32.const 3
call $write
else
i32.const 5
call $write
end
i32.const 0
local.set $b
local.get $b
if
i32.const 3
call $write
else
i32.const 5
call $write
end
local.get $x
local.get $y
i32.lt_s
local.set $b
local.get $b
if
local.get $x
call $write
else
local.get $y
call $write
end
local.get $x
local.get $y
i32.gt_s
if (result i32)
i32.const 1
else
local.get $t
end
local.set $b
local.get $b
if
i32.const 3
call $write
else
i32.const 5
call $write
end
local.get $x
local.get $y
i32.gt_s
if (result i32)
i32.const 1
else
local.get $f
end
local.set $b
local.get $b
if
i32.const 3
call $write
else
i32.const 5
call $write
end
local.get $x
local.get $y
i32.eq
if (result i32)
i32.const 1
else
local.get $x
local.get $y
i32.gt_s
end
local.set $b
local.get $b
if
i32.const 3
call $write
else
i32.const 5
call $write
end
local.get $x
local.get $y
i32.eq
if (result i32)
i32.const 1
else
local.get $x
local.get $y
i32.lt_s
end
local.set $b
local.get $b
if
i32.const 3
call $write
else
i32.const 5
call $write
end
local.get $f
if (result i32)
local.get $x
local.get $y
i32.ge_s
else
i32.const 0
end
local.set $b
local.get $b
if
i32.const 3
call $write
else
i32.const 5
call $write
end
call $writeln
loop
local.get $y
i32.const 3
i32.gt_s
if
local.get $y
call $write
local.get $y
i32.const 1
i32.sub
local.set $y
br 1
end
end
local.get $y
call $write
call $writeln
local.get $x
local.get $y
i32.lt_s
i32.eqz
if (result i32)
local.get $t
else
i32.const 0
end
if
local.get $x
call $write
end
)
(memory 1)
(start $program)
)