def is_prime?(n)
  for i in 2..(n/2)
    return false if n % i == 0 
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

def primes_through(n)
  results = []
  
  i = 1
  until i > n
    results << i if is_prime?(i)
    i += 1
  end
  
  results
end