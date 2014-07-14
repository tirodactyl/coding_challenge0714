require "prime"
require "prime_factors"

describe "#prime_factors" do
  it "calls #n_primes only once" do
    should_receive(:n_primes).once
    prime_factors(3)
  end
end