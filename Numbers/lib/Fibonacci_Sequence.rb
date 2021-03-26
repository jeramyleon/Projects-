# Fibonacci Sequence - Enter a number and have the program generate the Fibonacci sequence to that number or to the Nth number.
def fibonacci(number) # number represents how many times to do repetition for loop so if user types 5, fibonacci sequence will be exected 5 times

  fibonacci_start = 0
  fibonacci_next  = 1
  puts fibonacci_start
  puts fibonacci_next

  number.times do
    puts fibonacci_start + fibonacci_next # puts 0 + 1 which is 1 
    fibonacci_start += fibonacci_next #fibonacci start becomes 1
    puts fibonacci_start + fibonacci_next # puts 1 + 1 which is 2 
    fibonacci_next += fibonacci_start
  end
end

fibonacci(5)
