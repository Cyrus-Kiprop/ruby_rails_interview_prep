 # The principle states that you should be able to replace any instance of any parent 
 # class with an instance of one of its children without creating any unexpected behaviour


 # consider this liskov violation

 # parent 
 class Rectangle
 	def set_height(height)
 		@height = height
 	end

 	def set_width(width)
 		@width = width
 	end
 end


 # child
 class Square
 	def set_height(height)
 		super(height)
 	end

 	def set_width(width)
 		super(width)
 		@height = width
 	end
 end

 # For the square class, when we call the set_height and set_width alter the height
 # and width of the parent class resulting into unexpected consequences.

 # Another violation of liskov principle for an overridden method in a child class.