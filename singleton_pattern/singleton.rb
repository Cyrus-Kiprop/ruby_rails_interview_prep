# this is a oop programming pattern that allows you to make sure you only have
# a 1 and only 1 instance of some class.
#
# Ruby implements the singleton pattern with a module just include Singleton
#
# It basically hides the :new method. ClassName.new willalways return an error.
#

require 'singleton'

class NotSingleton
  # 'initialize' is called every time an instance is created.
  def initialize
    puts 'this will be printed each and every time a new instance is created'
  end

end

class MySingleton
  include Singleton
  def initialize
    puts 'this will be printed each and every time a new instance is created'
  end


  def initialize
    puts 'this will be  printed once'
  end

end

NotSingleton.new
NotSingleton.new

MySingleton.instance
MySingleton.instance
MySingleton.instance


p NotSingleton.instance_methods
p MySingleton.singleton_methods
