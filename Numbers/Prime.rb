# Prime Factorization - Have the user enter a number and find all Prime Factors (if there are any) and display them.
require 'prime'

# Step 1: Start by dividing the number by the first prime number 2 and continue dividing by 2 until 
# you get a decimal or remainder. Then divide by 3, 5, 7, etc. until the only numbers left are 
# prime numbers.

@element = 0

def prime_factorization(number)
  if Prime.prime?(number)
    puts number 
    return true 
  end

  prime_numbers = (0..number).to_a.select { |num| Prime.prime?(num) }
  if number % prime_numbers[@element] == 0
    puts prime_numbers[@element]
    prime_factorization(number/prime_numbers[@element])
  else 
    @element += 1
    prime_factorization(number)
  end

end

prime_factorization(300)

