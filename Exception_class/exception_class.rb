# the exception class is a base class after the basic
# Object that all the error classes inherit from

p Exception.superclass.superclass

p NoMethodError.ancestors

# raise 'An error occurred'

# raise NoMethodError, 'this is a no method error'

begin
  #   raise ZeroDivisionError, 'you cannot divide a number with zero'
  'my  string'.odd?
rescue NoMethodError => e
  #   puts "#{e.class}: #{e.message}"
  puts "#{$!} is the raised Exceptional::: #{$@} is the exception backtrace"
end

# the retry key word in erro handling

# consider the following the begin end statement
i = 0

begin
  i += 1
  puts "this is the value of #{i}"
  
  raise RuntimeError 

rescue RuntimeError => e
  puts "#{$!} :: #{$@}"
  retry if i < 3
end
