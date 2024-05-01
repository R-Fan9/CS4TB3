(module
(import "P0lib" "write" (func $write (param i32)))
(import "P0lib" "writeln" (func $writeln))
(import "P0lib" "read" (func $read (result i32)))
(global $N (mut i32) i32.const 3)
(func $map (param $f i32) (param $a i32) (result i32)
  (local $b i32)
  (local $i i32)
  (local $mp i32)
 
  global.get $memsize
  local.set $mp
  global.get $memsize
  local.tee $b
  i32.const 12
  i32.add
  global.set $memsize
 
  i32.const 0
  local.set $i
  loop $label0
    local.get $i
    global.get $N
    i32.lt_s
    if
      ;; b[i] ← f(a[i])
      local.get $i    ;; b[i]
      i32.const 4     ;; size(integer)
      i32.mul
      local.get $b
      i32.add

      local.get $i    ;; push function parameter (a[i]) on stack
      i32.const 4     ;; size(integer)
      i32.mul
      local.get $a
      i32.add
      i32.load
      local.get $f    ;; push function index on stack
      call_indirect (param i32) (result i32)    ;; indirect call 

      i32.store

      local.get $i    ;; i := i + 1
      i32.const 1
      i32.add
      local.set $i
      br $label0
    end
  end

  local.get $mp
  global.set $memsize
  local.get $b
)
(func $square (param $x i32) (result i32)
  local.get $x
  local.get $x
  i32.mul
)
(global $memsize (mut i32) i32.const 24)
(func $program
  i32.const 0    ;; a[0] := 3
  i32.const 4    ;; size(integer)
  i32.mul
  i32.const 0    ;; adr(a)
  i32.add
  i32.const 3
  i32.store

  i32.const 1    ;; a[1] := 1
  i32.const 4    ;; size(integer)
  i32.mul
  i32.const 0    ;; adr(a)
  i32.add
  i32.const 1
  i32.store

  i32.const 2    ;; a[2] := 4
  i32.const 4    ;; size(integer)
  i32.mul
  i32.const 0    ;; adr(a)
  i32.add
  i32.const 4
  i32.store

  i32.const 12    ;; b ← map(square, a)
  i32.const 0     ;; push square function index 0 on stack
  i32.const 0     ;; push pointer to array a on stack
  call $map
  i32.const 12
  memory.copy

  i32.const 2    ;; write(b[2])
  i32.const 4
  i32.mul
  i32.const 12
  i32.add
  i32.load
  call $write
)
(table 1 funcref)
(elem (i32.const 0) $square)
(memory 1)
(start $program)
)
