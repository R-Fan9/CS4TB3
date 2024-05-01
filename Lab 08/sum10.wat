(module
 (import "P0lib" "write" (func $write (param i32)))
 (import "P0lib" "read" (func $read (result i32)))
 (global $t (mut i32) i32.const 40)    ;; total memory = 4 * 10 = 40 bytes
 (func $readAll
   (local $t1 i32)
   i32.const 0
   local.set $t1
   loop $label0
    local.get $t1
    call $read
    i32.store
    i32.const 4
    local.get $t1
    i32.add
    local.set $t1
    local.get $t1
    global.get $t
    i32.lt_s
    br_if $label0
   end
 )
 (func $addAll (result i32)
  (local $x i32)
  (local $t1 i32)
  i32.const 0
  local.set $x
  i32.const 0
  local.set $t1
  loop $label1
    local.get $t1
    i32.load
    local.get $x
    i32.add
    local.set $x
    i32.const 4
    local.get $t1
    i32.add
    local.set $t1
    local.get $t1
    global.get $t
    i32.lt_s
    br_if $label1
  end
  local.get $x
 )
 (func $program
  call $readAll
  call $addAll
  call $write
 )
 (memory 1)
 (start $program)
)
