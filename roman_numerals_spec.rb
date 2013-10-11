require "./roman_numerals"

describe 'Roman Numerals'  do
	context "Testing First Nine"	do
		it "returns I when 1" do
			expect(numbers_to_numerals(1, onesarray)).to eq "I"
		end

		it "doesn\'t return I when 8" do
			expect(numbers_to_numerals(8, onesarray)).not_to eq "I"
		end

		it "returns II when 2" do
			expect(numbers_to_numerals(2, onesarray)).to eq "II"
		end

		it "returns V when 5" do
			expect(numbers_to_numerals(5, onesarray)).to eq "V"
		end

		it "doesn't return 'V' when 4" do
			expect(numbers_to_numerals(4, onesarray)).not_to eq "V"
		end

		it "returns 'VII' when 7" do
			expect(numbers_to_numerals(7, onesarray)).to eq "VII"
		end 

		it "returns IX when 9" do
			expect(numbers_to_numerals(9, onesarray)).to eq 'IX'
		end
	end
	context "Testing tens" do
		it "returns X when 1 in tens column" do
			expect(numbers_to_numerals(1, tensarray)).to eq "X"
		end
		it "returns L when 5 given in tens column" do
			expect(numbers_to_numerals(5, tensarray)).to eq "L"
		end
		it "returns XC when 9 in tens column" do
			expect(numbers_to_numerals(1, tensarray)).to eq "X"
		end
		it "returns empty string when 0 given in tens column" do
			expect(numbers_to_numerals(0,tensarray)).to eq ""
		end
	end
	context "turn_number_into_arrays numbers" do
		it "returns the digits in array format" do
			expect(turn_number_into_array(4321)).to eq [1,2,3,4]
		end
	end
	context "testing romanising" do
		it "returns VII when 3007 is given" do
			expect(romanising(3007)).to eq "MMMVII"
		end

		it "doesn't return anything when 0 is passed" do
			expect(romanising(00)).to eq ""
		end
		it "returns XLI when given 3041" do
			expect(romanising(3041)).to eq "MMMXLI" 
		end
	end
	context "testing hundreds" do
		it "returns D when 5 in hundreds column" do
			expect(romanising(500)).to eq "D"
		end
		it "returns DXXIII when 523 in hundreds column" do
			expect(romanising(523)).to eq "DXXIII"
		end
	end
	context "testing thousands" do
		it "returns MMMM when given 3 in thousands column" do
			expect(romanising(3000)).to eq "MMM"
		end
		it 'returns III when 3 is entered' do
			expect(romanising(3)).to eq 'III'
		end
	end
end

