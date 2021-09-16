# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  tot=0
  i=0
  
  while i < arr.length()
    tot += arr[i]
    i += 1
  end
  
  tot
end

def max_2_sum arr
  tot = 0
  
  if arr.length() == 0
    tot = 0
    
  elsif arr.length() == 1
    tot = arr[0]
    
  else
    largest = arr.sort[-1]
    second_largest = arr.sort[-2]
    tot = largest + second_largest
  end
  
  tot    
end

def sum_to_n? arr, n
  
  if arr.length == 0 or arr.length == 1
    return false

  else
    for i in 0..(arr.length-1)
      for j in 0..(arr.length-1)
        if !(i == j)
          if (n == arr[i] + arr[j])
            return true
          end
        end
      end
    end
  end
  
  return false
end

# Part 2

def hello(name)
  str = "Hello, " + name.to_s
  return str
end

def starts_with_consonant? s
  f_char = s.to_s[0]
  
  if !(f_char =~ /[[:alpha:]]/)
    return false
	
  else
    f_char = f_char.upcase
	
    if(f_char == 'A' or f_char == 'E' or f_char == 'I' or f_char == 'O' or f_char == 'U')
      return false
    else
      return true
    end
	
  end
  
end

def binary_multiple_of_4? s
  
  if s.length() == 0
    return false
  end
  
  if not(s.is_a? Integer) and not(s =~ /\A[0-1]+\z/)
    return false
	
  else
    num = s.to_i
    if (num%4 == 0)
      return true
    else
      return false
    end
  end
  
end

# Part 3

class BookInStock
  attr_accessor :isbn
  attr_accessor :price
	
  def initialize(isbn,price)
  
    if isbn.length() == 0 or price <= 0
      raise ArgumentError
    end
    
    @isbn = isbn
    @price = price
    
  end
  
  def price_as_string 
    
    str = "$#{'%.2f' %  @price}"
    return str
    
  end
	  
end