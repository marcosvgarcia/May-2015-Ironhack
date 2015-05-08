 class Counter
	attr_accessor :counter

	def initialize 

		@counter = Hash.new 0
	end

	def add_element element 

		@counter[element] += 1
	end
end

bottles_counter = Counter.new

bottles_counter.add_element "bezoya"
bottles_counter.add_element "solan"
bottles_counter.add_element "fuensanta"

puts bottles_counter.counter