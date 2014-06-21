#Progrm to find if two strings are anagrams of each other 

class Ex3_Anagrams
	attr_accessor :str1,:str2 
	
	def initialize(str1,str2)
	    @str1 = str1
	    @str2 = str2
	    anagram(str1,str2)
	end 
	
	def anagram(str1,str2)
	    a = str1.chars.sort { |a, b| a.casecmp(b) } .join
	    b = str2.chars.sort { |a, b| a.casecmp(b) } .join
	    if a == b 
		puts "The strings are anagrams"
	    else
		puts "Oops sorry the strings are not anagrams"
	    end 
	end 
end
