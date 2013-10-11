def onesarray 
	["I", "IV", "V", "IX"]
end

def tensarray 
	["X", "XL", "L", "XC"]
end

def hundredsarray
	["C", "CD", "D", "CM"]
end

def thousandsarray 
	["M", "MMMM", "", ""]
end

def romanising number
	numbers_to_numerals(array_index(number, 3), thousandsarray) + numbers_to_numerals(array_index(number, 2), hundredsarray) + numbers_to_numerals(array_index(number, 1), tensarray) + numbers_to_numerals(array_index(number, 0), onesarray) 
end

def numbers_to_numerals (number, array)
	return "" if number == nil
	return (array[0] * number) if number < 4
 	return array[1] if number == 4
 	return array[2] + (array[0] * (number - 5)) if number < 9
 	return array[3]
end

def turn_number_into_array number
	String(number).scan(/./).map{|x| x.to_i}.reverse
end

def array_index number, digit 
	turn_number_into_array(number)[digit]
end

