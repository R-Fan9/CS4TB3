(module
  (import "P0lib" "write" (func $write (param i32)))
  (func $max (param $x i32) (param $y i32) (result i32)
    (local $m i32)
    local.get $x
    local.get $y
    i32.gt_s
    if
      local.get $x
      local.set $m
    else
      local.get $y
      local.set $m
    end
  )
  (func $program
    i32.const 3
    i32.const 5
    call $max
    call $write
    i32.const 9
  )
  (start $program)
)
