# Unit Converter (temp, currency, volume, mass and more) - Converts various units between one another. The user enters the type of unit being entered, the type of unit 
# they want to convert to and then the value. The program will then make the conversion.
class Unit_converter

  def temp_converter(value=0, unit="C", convertTo="F")
    puts "Original:  #{value.to_s} temp#{unit}"

    if unit == "F" && convertTo == "C"
      puts "Converted: #{((value-30)/2).to_s} temp#{convertTo}"
    elsif unit == "F" && convertTo == "K"
      puts "Converted: #{((value-32)*5/9+273.15).to_s} temp#{convertTo}"
    elsif unit == "C" && convertTo == "F"
      puts "Converted: #{((value*9/5)+32).to_s} temp#{convertTo}"  
    elsif unit == "C" && convertTo == "K"
      puts "Converted: #{(value+273.15).to_s} temp#{convertTo}"
    elsif unit == "K" && convertTo == "F"
      puts "Converted: #{((value-273.15)*9/5+32).to_s} temp#{convertTo}"
    elsif unit == "K" && convertTo == "C"
      puts "Converted: #{(value-273.15).to_s} temp#{convertTo}"
    end
  end

  def currency_converter(value=2.00, unit="USD", convertTo="EUR")
    currencies = {
      "USD" => 1.00,
      "CAD" => 1.26,
      "EUR" => 0.85,
      "NZD" => 1.43,
      "AUD" => 1.32,
      "JPY" => 108.98
    }

    puts "Old Value: #{value} #{unit}"
    puts "New Value: #{value * currencies[convertTo]} #{convertTo}"
  end

  def volume_converter(value=10, unit="L", convertTo="G")
    volume = {
      "CC" => {"L"=>"/1000", "G"=>"/3785"},
      "G"  => {"L"=>"*3.785", "CC"=>"*3785"},
      "L"  => {"CC"=>"*1000", "G"=>"/3.785"}
    }

    conversion = eval(value.to_s + volume[unit][convertTo])
    puts "Original:  #{value.to_s}#{unit}"
    puts "Converted: #{conversion.to_s}#{convertTo}"
  end

  def mass_converter(value=5, unit="G", convertTo="K")
    mass = {
      "G" => {"K"=>"/1000", "T"=>"/0.000001"},
      "K" => {"G"=>"*1000", "T"=>"/1000"},
      "T" => {"G"=>"*1000000", "K"=>"*1000"}
    }
    
    conversion = eval(value.to_s + mass[unit][convertTo])
    puts "Original:  #{value.to_s}#{unit}"
    puts "Converted: #{conversion.to_s}#{convertTo}"
  end
end

new_converter = Unit_converter.new 
new_converter.mass_converter
