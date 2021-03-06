puts "\nHello! n.n"

###
##
# CLASS METHODS
puts "\n------TEST 1------"

class MyClass
 def my_method
   @exis=10
 end
end

c = MyClass.new

puts "this a sample of a simple method > "
puts c.my_method

###
##
# CLASS SELF METHODS
puts "\n------TEST 2------"

class OtherClass
 def self.method
  "something"
 end
end

puts "this works pretty much like java static methods"
puts OtherClass.method

###
##
# GETTER AND SETTER
puts "\n------TEST 3------"

class GetterSetter
 def boo
   return @boo
 end

 def boo=(val)
   @boo=val
 end
end

gs = GetterSetter.new
gs.boo=5
puts "this is a sample of a getter/setter >"
puts gs.boo

class SimpleGetterSetter
 attr_accessor :boo
end

gss = SimpleGetterSetter.new
gss.boo=5
puts "this is a sample of a simplified getter/setter >"
puts gss.boo

###
##
# SUPER-CLASSES
puts "\n------TEST 4------"

class ChildClass < SimpleGetterSetter
	attr_accessor :baa , :bee , :bii

	def concat
  		baa + bee + bii + boo
 	end
end

child = ChildClass.new
child.baa="a"
child.bee="e"
child.bii="i"
child.boo="o"

puts "this is a method from a class with inheritance"
puts child.concat


