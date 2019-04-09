def call_block(my_proc)
  count = 500
  my_proc.call
end
count   = 1


my_proc = Proc.new { puts count }
my_proc2 = proc { puts count }
my_lambda = -> { puts count }

call_block(my_proc)
call_block(my_proc2)
call_block(my_lambda)

# What does this print?
#
# All will print 1
# This happens because the proc/lambda is using the value of count from the place where it was defined
# and that’s outside of the call_block method definition