
#
# modifying the eigenclass of your first instance wont change anything for
# another instance.
#
# example
#

class ExampleObject
  def print_hello
    puts 'Hello'
  end
end


object1 = ExampleObject.new
object2 = ExampleObject.new

object1.print_hello
object2.print_hello


def object2.print_hello
  puts 'bonjour'
end



object1.print_hello
object2.print_hello

# class << self notations
# the previous example can be rewritten in the following way
#
class ExampleObject2
  def print_hello
    puts 'hello'
  end
end


object1 = ExampleObject2.new
object2 = ExampleObject2.new

class << object2 # used for accessing the eigenclass of that specific instance
  def print_hello
    puts 'cyrus'
  end
end


object2.print_hello


# Everything in ruby is a class

# event the class itself is an instance of the Class class
#
# Meaning every class we create as a copy of the Class object as it's
# eigenclass
#
#
# accessing the eigen of a class

class C
  # Either inside of the definittion for the class
  class << self
    def print_me
      puts 'hello'
    end
  end
end


# outside of the class
#
#
class << C
  def print_me
    puts 'hello outisde of the class itself'
  end
end


C.print_me
