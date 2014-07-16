require './lib/prime_factors'
require './lib/print_matrix'

if $PROGRAM_NAME == __FILE__
  print_matrix(prime_factors(ARGV.first.to_i))
end