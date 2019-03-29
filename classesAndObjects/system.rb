# `run in another process` blocking and returns the output of that process
time = `time /t`
puts time

# the #? returns information of the last process
puts $?

# system "run in another process", blocking, and returns the execution result (0, 1 or nil)
puts system "time /t"
puts $?