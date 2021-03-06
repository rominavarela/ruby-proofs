###
##
# CLASS
class SimpleGetterSetter
 attr_accessor :boo
end

###
##
# MODULE
module MyModule

	EMAIL= Regexp.new('\A[\w\._%-]+@[\w\.-]+\.[a-zA-Z]{2,4}\z')

	def MyModule.validate_emails(emails)
		for element in emails
		   if ((EMAIL=~ element) != NIL) then
		      puts element + " [OK]"
		   else
		      puts element + " [X]"
		    end
		end
	end

end

