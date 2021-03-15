# Binary to Decimal and Back Converter - Develop a converter to convert a decimal number to binary or a binary number to its decimal equivalent.

def decimal_to_binary(decimal)
  number1 = decimal 
  binary_array = []

  until number1 == 0
     binary_array.push(number1 % 2)
     number1 /= 2 
  end

  puts "Decimal: #{decimal}"
  puts "Binary:  #{binary_array.join}"
end

decimal_to_binary(5)

def binary_to_decimal(binary)
  array = binary.to_s.split("") 
  
  decimal = 0
  array.each do |num|
    num1 = num.to_i
    decimal = decimal * 2 + num1
  end

  puts "Binary:  #{binary}"
  puts "Decimal: #{decimal}"
end

binary_to_decimal(1001011)