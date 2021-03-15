# Find PI to the Nth Digit - Enter a number and have the program generate PI up to that many decimal places. Keep a limit to how far the program will go.

def Find_PIto(n)

  unless n.is_a? Integer
    print "Not a number"
    return false
  end

  if n > 15
    print "Number too large"
    return false
  end

  pi = Math::PI
  puts pi.ceil(n) 

end 

Find_PIto(15)  



