def is_prime?(n)
  # this line prevents us from having to check ANY even numbers once we check for division by two
  if n != 2
    return false if n % 2 == 0
  end
  
  i = 3
  until i >= n
    return false if n % i == 0
    i += 2
  end
  
  true
end

def n_primes(n)
  results = []
  
  i = 1
  until results.length == n
    results << i if is_prime?(i)
    i += 1
  end
  
  results
end

# I chose to use the n_primes function for the script instead of the primes_through, but it would be trivial to alter.
def primes_through(n)
  results = []
  
  i = 1
  until i > n
    results << i if is_prime?(i)
    i += 1
  end
  
  results
end