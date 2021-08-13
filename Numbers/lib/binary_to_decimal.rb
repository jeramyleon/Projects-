# Binary to Decimal and Back Converter - Develop a converter to convert a decimal number to binary or a binary number to its decimal equivalent.
class Binary_decimal
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
end



