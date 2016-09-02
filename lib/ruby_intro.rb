# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  sum = 0
  arr.each{|x| sum += x}
  return sum
end

def max_2_sum arr
  return 0 if arr.count == 0
  return arr[0] if arr.count == 1
  return arr.sort!.reverse![0] + arr[1]
end

def sum_to_n? arr, n
  arr.combination(2).to_a.each{ |x, y| return true if x + y ==n}
  return false
end

# Part 2

def hello(name)
  return "Hello, #{name}"
end

def starts_with_consonant? s
  s =~ /^[b-df-hj-np-tv-z]/i
end

def binary_multiple_of_4? s
  s =~ /^[01]*00$/ || s == "0"
end

# Part 3

class BookInStock
  def initialize (isbn, price)
    if isbn == "" || price <= 0
      raise ArgumentError
    end
    @isbn = isbn
    @price = price
  end
  
  def isbn ; @isbn ; end
  def price ; @price ; end
    
  def isbn= (isbn)
    @isbn = isbn
  end
  
  def price= (price)
    @price = price
  end
  
  # Help from http://stackoverflow.com/questions/12389567/how-to-format-a-string-with-floats-in-ruby-using-variable
  def price_as_string
    return "$#{ '%.2f' % @price}"
  end
  
end
