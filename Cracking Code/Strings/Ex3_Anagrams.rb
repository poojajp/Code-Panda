#Progrm to find if two strings are anagrams of each other 

class Ex3_Anagrams
	attr_accessor :str1,:str2 
	
	def initialize(str1,str2)
	    @str1 = str1
	    @str2 = str2
	   # anagram(str1,str2)
	    witot_built_in_fns(str1,str2)
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

	def witot_built_in_fns(str1,str2)
		a = str1.downcase
		b = str2.downcase
		string1 = a.scan.(/./)
		string2 = b.scan.(/./)
		numltts1 =count_frequency(string1)
		numltts2 =count_frequency(string2)
		if numltts1 == numltts2 
			puts "Both the strings are anagrams and u just found that out without using a sort function!!"
		else 
			puts "Tough luck they were'nt anagrams"
		end
	end
	
	def count_frequency(word_list)
		counts = Hash.new(0)
		for word in word_list 
			counts[word] +=1
		end 
		return counts 
	end
end
