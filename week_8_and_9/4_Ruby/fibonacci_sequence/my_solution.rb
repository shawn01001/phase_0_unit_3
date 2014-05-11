# U3.W8-9: 


# I worked on this challenge [by myself, with: ].

# 2. Pseudocode



# 3. Initial Solution

def is_fibonacci?(num)
  fibonacci = [0,1]
  
  return true if num <= 1
  
  if num > fibonacci.last do
    x, y = fibonacci.pop(2)
    fibonacci.push(y, x + y)
  end
  
  num == fibonacci.last ? true : false
end
  
end



# 4. Refactored Solution






# 1. DRIVER TESTS GO BELOW THIS LINE






# 5. Reflection 