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
end

def starts_with_consonant? s
  # YOUR CODE HERE
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
end

# Part 3

class BookInStock
# YOUR CODE HERE
end
