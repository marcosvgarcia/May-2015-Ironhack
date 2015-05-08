def is_number?(val)
	val.to_i.to_s == val
end

def is_symbol?(val)
	val.downcase == val.upcase
end

def NumberEncoding(str)

	str = str.downcase
	output = ''

	alphabet = ('a'..'z').to_a

  for i in 0..str.length - 1
  	if (is_number?(str[i]) == true || is_symbol?(str[i]) == true)
  		output += str[i]
  	else (is_number?(str[i]) == false && str[i] != ' ')
  		output += (alphabet.index(str[i]).to_i + 1).to_s
  	end
  end

  	return output
end


print NumberEncoding('hello 45')  == '85121215 45'
print NumberEncoding('jaj-a')  == '10110-1'