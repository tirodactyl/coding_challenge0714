require_relative "prime"

def prime_factors(n)
  primes = n_primes(n)
  
  rows = Array.new(n + 1) { Array.new(n + 1) }
  
  rows[0] = [""] + primes
  
  memo = {}
  
  rows.each_index do |r_idx|
    next if r_idx == 0
    
    rows[r_idx].each_index do |c_idx|
      # broken out to increase readability, could easily not assign this variable and do this in one line below
      mult = (c_idx == 0 ? 1 : rows[0][c_idx])
      
      rows[r_idx][c_idx] = rows[0][r_idx] * mult
    end
  end
  
  rows
end