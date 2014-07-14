require './lib/prime_factors'

if $PROGRAM_NAME == __FILE__
  prime_factors(ARGV.first.to_i)
end