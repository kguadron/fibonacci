# Computes the nth fibonacci number in the series starting with 0.
# fibonacci series: 0 1 1 2 3 5 8 13 21 ...
# e.g. 0th fibonacci number is 0
# e.g. 1st fibonacci number is 1
# ....
# e.g. 6th fibonacci number is 8

# Time complexity: O(n) where n is the value of the input
# Space complexity: O(n) where n is the value of the input
def fibonacci(n)
  raise ArgumentError, "Not an integer larger than 0" if !n || n < 0

  fib_array = [0, 1]
  i = 0

  if n == 0
    return 0
  elsif n == 1
    return 1
  else
    until i == (n - 1)
      fib_array << fib_array[i] + fib_array[i + 1]
      i += 1
    end
  end
  return fib_array[n]
end
