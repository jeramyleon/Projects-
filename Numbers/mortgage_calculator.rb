# Mortgage Calculator - Calculate the monthly payments of a fixed term mortgage over given Nth terms at a given interest rate. Also figure out how long it will take the
# user to pay back the loan. For added complexity, add an option for users to select the compounding interval (Monthly, Weekly, Daily, Continually).

def mortgage_calculator(mortgage=300_000, fixed_rate=3, months=30)
  total = mortgage + (mortgage * fixed_rate) / 100
  puts total
  months = years * 12 
  monthly_payment = total / months
  puts monthly_payment
end

mortgage_calculator