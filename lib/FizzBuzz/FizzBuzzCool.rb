def FizzBuzz start, finish, rules

	(start..finish).each do |number|
		
		result = use_rule number, rules

		if !result.empty?
			puts result
		else
			puts number
		end
	end
end

def use_rule number, rules

	result = ''

	rules.each do |key, value|

		result << value if are_divisible? number, key
	end

	return result
end

def are_divisible? number_a, number_b
	number_a % number_b == 0
end

FizzBuzz 0, 100, {3 => 'Fizz', 5 => 'Buzz'}