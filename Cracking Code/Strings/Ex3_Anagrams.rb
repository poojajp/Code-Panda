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

	def witot_built_in_fns(str1,str2)
		string1 = str1.downcase
		string2 = str2.downcase
		a = string1.scan.(/./)
		b = string2.scan.(/./)
		a.each do |i|
		       numlttrs[(('a[i]'.ord) - ('a'.ord))]++
		end
		b.each do |i|
		       numlttrs[(('b[i]'.ord) - ('a'.ord))]--
		end
		numlttrs.each do |i|
		       if numlttrs[i] != 0
			  flag = TRUE 
			end
		end
		if flag == TRUE 
		   puts "not an anagram"
		else
		   puts "Strings are perfect anagrams"
	end		    
