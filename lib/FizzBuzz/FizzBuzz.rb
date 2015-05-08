def three_multiply(num)
	num % 3 == 0
end

def five_multiply(num)
	num % 5 == 0
end

def Game(firstNum, lastNum)

	for i in firstNum..lastNum
		
		if three_multiply(i) && five_multiply(i)
			puts 'FizzBuzz'
		elsif five_multiply(i)
			puts 'Buzz'
		elsif three_multiply(i) 
			puts 'Fizz'
		else
			puts i
		end
	end
	return num
end

Game(100)
