def is_symbol?(val)
	val.downcase == val.upcase
end

def is_space?(val)
	val == ' '
end

def clear(str)

	clearString = ''

	for i in 0..str.length - 1
		if (is_space?(str[i]) || is_symbol?(str[i]))
			clearString = clearString
		else
			clearString += str[i]
		end
	end

	return clearString.downcase
end

def PalindromeTwo?(str)

	clear(str).reverse == clear(str) 
end

print PalindromeTwo?("Noel - sees Leon")

print PalindromeTwo?("A war at Tarawa!")


