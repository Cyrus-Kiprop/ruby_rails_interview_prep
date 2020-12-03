# when you create an instance of a class basically a copy of the original class
# is created but it is owned by that specific instance. this is the eigenclass.
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
