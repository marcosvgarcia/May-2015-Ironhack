class Account

	attr_accessor :user, :password, :website

	def initialize user, password, website

		@user = user
		@password = password
		@website = website
		@denegade = 0

		encrypt_password
	end

	def encrypt_password

		word = @password

		word_encrypted = ''

		codified_num = []

		if @denegade < 1

			word.each_byte do |c|
				
				codified_num.push c + 3	
			end

			codified_lett = codified_num.map {|i| i.chr}

			word_encrypted = codified_lett.reduce {|x, y| x + y}

			@denegade += 1
		else
			puts 'you just encrypt your password'
		end

		return word_encrypted
	end

	def decrypt_password

		word = @password

		uncodified_num = []

		if @denegade >= 1	

			word.each_byte do |c|
				uncodified_num.push c - 3
			end

			uncodified_lett = uncodified_num.map {|i| i.chr}

			uncodified_lett.reduce {|x, y| x + y}

			@denegade -= 1
		else
			puts 'you just decrypt your password'
		end

		return word
	end
end


class AccountManager

	attr_accessor :counter

	def initialize 

		@counter = Hash.new 0
		@insecure_accounts = 0
	end

	def add_element element 

		@counter[element] += 1
	end

	def count_insecure_accounts

		keys_array = @counter.keys

		keys_array.each do |key| 
			if key.length < 5
				@insecure_accounts += 1
			end
		end

		puts @insecure_accounts
	end
end


outlook = Account.new 'user', 'password', 'website'

puts outlook.decrypt_password

outlook.decrypt_password

puts outlook.encrypt_password

outlook.encrypt_password




