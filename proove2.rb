puts "\n------EMAIL REGULAR EXPRESION TEST------"

email= Regexp.new('\A[\w\._%-]+@[\w\.-]+\.[a-zA-Z]{2,4}\z')
email=~ "rominavarela.mx@gmail.com"

puts email

###
##
# ARRAYS AND FOR EACH LOOP
puts "\n------TEST 1------"

e = Array.new(2)
e[0]="rominavarela.mx@gmail.com"
e[1]="rominavarela.mxgmail.com"

puts "this a sample of a for-each loop and regular expression > "
for element in e
   if ((email=~ element) !=NIL) then
      puts element + " [OK]"
   else
      puts element + " [X]"
   end
end

###
##
# MODULES
puts "\n------TEST 2------"

$LOAD_PATH << '.'
require 'module_proove.rb'

gss = SimpleGetterSetter.new
gss.boo=5
puts "this is a sample of a module getter/setter proove >"
puts gss.boo

###
##
# MODULES
puts "\n------TEST 3------"
puts "this is a sample of a module regular expression proove >"
puts puts MyModule::EMAIL
MyModule.validate_emails(e)
