# Find e to the Nth Digit - Just like the previous problem, but with e instead of PI. Enter a number and have the program generate e up to that many decimal places. 
# Keep a limit to how far the program will go.

def Find_Eto(e, n)

  unless n.kind_of? Integer
    print "Requires n to be a number"
    return false
  end

  unless e.kind_of? Float
    print "Requires e to be a float"
    return false
  end
  
  if n > 15
    print "Too large"
    return false 
  end
  
  puts e.ceil(n)

end

Find_Eto(10.56789, 4)

