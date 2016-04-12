class Multiples

	def find_below(n)
		(1...n).select { |i| i % 3 == 0 or i % 5 == 0 }
	end

	def get_sum_below(n)
		find_below(n).reduce(:+)
	end

end