require 'multiples'

describe Multiples do
	
	before { @m = Multiples.new }

	context 'returns a list with some numbers that are multiples from 3 or 5' do
		it "returns numbers below 10" do
			list_below_10 = @m.find_below(10)

			expect([3, 5, 6, 9]).to eq(list_below_10)
		end

		it "returns numbers below 20" do
			list_below_20 = @m.find_below(20)

			expect([3, 5, 6, 9, 10, 12, 15, 18]).to eq(list_below_20)
		end

		it "returns numbers below 30" do
			list_below_30 = @m.find_below(30)

			expect([3, 5, 6, 9, 10, 12, 15, 18, 20, 21, 24, 25, 27]).to eq(list_below_30)
		end
	end

	context 'returns a sum of some numbers that are multiples from 3 or 5' do
		it "returns a sum of numbers below 10" do
			sum_below_10 = @m.get_sum_below(10)

			expect(sum_below_10).to eq(23)
		end

		it "returns a sum of numbers below 20" do
			sum_below_20 = @m.get_sum_below(20)

			expect(sum_below_20).to eq(78)
		end

		it "returns a sum of numbers below 20" do
			sum_below_30 = @m.get_sum_below(30)

			expect(sum_below_30).to eq(195)
		end

		it "returns a sum of numbers below 1000" do
			sum_below_1000 = @m.get_sum_below(1000)

			expect(sum_below_1000).to eq(233168)
		end
	end

end

