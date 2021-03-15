# Next Prime Number - Have the program find prime numbers until the user chooses to stop asking for the next one.
require 'prime'

@element = 0

def prime_numbers
  list_of_primes = (0..1000).to_a.select { |num| Prime.prime?(num) }

  puts "Print next prime? Y or N."
  user_response = gets.chomp
  
  if user_response == "Y"
    puts list_of_primes[@element]
    @element += 1
    prime_numbers 
  elsif user_response == "N"
    puts "Program over."
    return false
  end 
    
end 

prime_numbers 
