# Change Return Program - The user enters a cost and then the amount of money given. The program will figure out the change and the number of quarters, dimes, nickels, 
# pennies needed for the change.

def change_return(amount, cost)

  change = (amount.to_f - cost.to_f).ceil(2) # change taken and rounded to second decimal place to simulate money. 
  puts "Change is: #{change}"

  count = {
    0 => 0,
    1 => 0,
    2 => 0,
    3 => 0
  } # keeping track of quartes, dimes, nickels and pennies 

  currency = [0.25, 0.10, 0.05, 0.01]
  element = 0
  currency.each do |num|
    count[element] = (change/num).floor
    answer = num * (change/num).floor
    change -= answer 
    element += 1
  end
   
  puts "quarters: #{count[0]}"
  puts "dimes:    #{count[1]}"
  puts "nickels:  #{count[2]}"
  puts "pennies:  #{count[3]}"
end

change_return(11.11, 10.00)
