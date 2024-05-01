(module
(import "P0lib" "write" (func $write (param i32)))
(import "P0lib" "writeln" (func $writeln))
(import "P0lib" "read" (func $read (result i32)))
(func $q (param $x i32) 
(local $y i32)
(local $0 i32)
global.get $_memsize
global.get $_memsize
local.tee $y
i32.const 32
i32.add
global.set $_memsize
local.get $y
local.get $x
i32.const 32
memory.copy
i32.const 2
i32.const 2
i32.sub
i32.const 4
i32.mul
local.get $x
i32.add
i32.load
call $write
i32.const 3
i32.const 2
i32.sub
i32.const 4
i32.mul
local.get $x
i32.add
i32.load
call $write
i32.const 4
i32.const 2
i32.sub
i32.const 4
i32.mul
local.get $x
i32.add
i32.load
call $write
global.set $_memsize
)
(global $_memsize (mut i32) i32.const 0)
(func $program
(local $b i32)
(local $0 i32)
global.get $_memsize
global.get $_memsize
local.tee $b
i32.const 64
i32.add
global.set $_memsize
i32.const 1
i32.const 32
i32.mul
local.get $b
i32.add
i32.const 2
i32.const 2
i32.sub
i32.const 4
i32.mul
i32.add
i32.const 3
i32.store
i32.const 1
i32.const 32
i32.mul
local.get $b
i32.add
i32.const 3
i32.const 2
i32.sub
i32.const 4
i32.mul
i32.add
i32.const 5
i32.store
i32.const 1
i32.const 32
i32.mul
local.get $b
i32.add
call $q
global.set $_memsize
)
(memory 1)
(start $program)
)