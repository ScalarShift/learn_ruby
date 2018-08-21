def add(a,b)
  return a+b
end

def subtract(a,b)
  return a-b
end

def sum(numbers)
  return numbers.reduce(0) {|sum,number| sum + number}
end

def multiply(numbers)
  return numbers.reduce(1) {|product,number| product * number}
end

def power(a,b)
  return a**b
end

def factorial(number)
  if number < 2
    return 1
  end
  number *= factorial(number - 1)
  return number
end
