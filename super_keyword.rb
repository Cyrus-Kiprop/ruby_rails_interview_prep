# implicit arguments
# super vs super()
# super with blocks
# super with ancestor chain

#=> implicit arguments

# --> When a method with arguments is overriden by one of its child classes then a call
# --> to super method without any arguments in the child method will automatically pass
# --> automatically pass the arguments of the child method to the parent method.

# consider
# case 1
class Parent
  def say(message)
    p message
  end
end


class Child < Parent

  # overrides the parent#say method
  def say(message)
    # this invoke the parent#say method found on the ancestor chain and passing the child message variable to it
    super
  end
end


# What if the parent#say method doesn't expect any arguments?

# super vs super()

# case II

class Parent
  def say
    p "I am the parent"
  end
end


class Child < Parent
  def say(message)
    super
  end

end

Child.new.say("hello") # => this will throw argument error


# to fix this

class Parent
  def say
    p 'something'
  end
end

class Child < Parent
  def say(message)
    super() # invoking the super with no variables to avoid the argument error
  end
end

Child.new.say("hello") #=> 'something'


# yield keyword


class Parent
  def say
    yield
  end
end

class Child < Parent
  def say
  end

end

Child.new.say { p 'I am the parent'} #=> 'I am the parent'
