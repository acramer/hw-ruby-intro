# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  arr.inject(0, :+)
  s = 0
  arr.each {|elem|s=s+elem}
  return s
end

def max_2_sum arr
  # YOUR CODE HERE
  arr = arr.sort
  if arr.length == 0
    return 0
  elsif arr.length == 1
    return arr[0]
  else
    return arr[arr.length-2]+arr[arr.length-1]
  end
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  if arr.length == 0 or arr.length == 1
    return false
  else
    idx0 = 0
    while idx0 < arr.length-1
      idx1 = idx0+1
      while idx1 < arr.length
        if arr[idx0]+arr[idx1] == n
          return true
        end
        idx1 += 1
      end
      idx0 += 1
    end
    return false
  end
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  return "Hello, "+name
end

def starts_with_consonant? s
  # YOUR CODE HERE
  if (/[\w&&[^aeiouAEIOU0-9]]+.*/ =~ s) == 0
    return true
  end
  return false
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  # Return False if character that is not 0 or 1 exists
  if ((/[^01]+/ =~ s) != nil or (s.length < 3 and s != '0'))
    return false
  elsif (s == '0' or s[-3..-1] == '100')
    return true
  else
    return false
  end
end

# Part 3

class BookInStock
# YOUR CODE HERE
  def initialize(isbn, price)
    raise ArgumentError.new(
      "Invalid isbn, got #{isbn}"
    ) if isbn == ''
    raise ArgumentError.new(
      "Expected a positive value, got #{price}"
    ) if price <= 0
    @isbn = isbn
    @price = price
  end
  def isbn
    @isbn
  end
  def isbn=(isbn)
    @isbn = isbn
  end
  def price
    @price
  end
  def price=(price)
    @price = price
  end
  def price_as_string
    "$%0.2f" % @price
  end
end
