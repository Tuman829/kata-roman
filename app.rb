
def romanize(number)
	result = ""	  #converts an int to a roman numeral string
  	@numerals.each do |digit, letter|
  		while number >= digit do
	  		result << letter*(number/digit) # string multiplication in ruby only works with whole numbers
	  		number = (number % digit) #removes the parts of the number already added or leaves it the same otherwise 
	  	end
  	end
  	return result 
end

def arabicize(numeral)
	result = 0
	@numerals.each do |digit, letter|
		while numeral.start_with?(letter) do
			result = result + digit
			numeral = numeral.slice(letter.length,numeral.length) #
		end
	end
	return result	
end
	@numerals = {
	    1000 => "M",  
	     900 => "CM",  
	     500 => "D",  
	     400 => "CD",
	     100 => "C",  
	      90 => "XC",  
	      50 => "L",  
	      40 => "XL",  
	      10 => "X",  
	        9 => "IX",  
	        5 => "V",  
	        4 => "IV",  
	        1 => "I",  
  				}