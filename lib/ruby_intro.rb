# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  sum = 0
  if arr.empty?
    return 0
  elsif !arr.empty?
    arr.each { |i| sum+=i }
  return sum
  end
end
  

def max_2_sum arr
  # YOUR CODE HERE
  sum = 0
  if arr.empty?
    return 0
  elsif arr.length == 1
    return arr[0]
  else
    sum = arr.sort.last(2).sum
  return sum
  end
end

def sum_to_n? arr, n
  # YOUR CODE HERE.
  if arr.empty?
    return false
  elsif !arr.empty?
    arr.combination(2).any? {|x, y| x + y == n }
  end
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  "Hello, " + name
end

def starts_with_consonant? s
  # YOUR CODE HERE
  if (s[0] =~ /^[b-df-hj-np-tv-z]+/i)
    return true
  else 
    return false
  end
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  if s == "0"
    return true
  elsif (s =~ /^[0-1]+$/ && s.to_i % 4 == 0)
    return true
  else
    return false
  end
end

# Part 3

class BookInStock
  # YOUR CODE HERE
  attr_accessor :isbn
	attr_accessor :price
	
	def initialize(isbn, price)
	  if isbn.empty? || price <= 0
	    raise ArgumentError
	  end
	  @isbn = isbn
	  @price = price
	end
	
	def price_as_string
	  sprintf("$%.2f", @price)
	end
end
