(module
  (import "P0lib" "write" (func $write (param i32)))
  (func $program
    (local $x i32)
    block
      i32.const 5
      local.set $x
      br 0
      i32.const 7
      local.set $x
    end
    local.get $x
    call $write
  )
  (start $program)
)
