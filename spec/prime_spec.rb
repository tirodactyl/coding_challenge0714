require 'rspec'
require 'prime'

describe "#is_prime?" do
  it "accurately identifies prime numbers" do
    expect(is_prime?(1)).to eq(true)
    expect(is_prime?(3)).to eq(true)
    expect(is_prime?(7)).to eq(true)
    expect(is_prime?(23)).to eq(true)
    expect(is_prime?(97)).to eq(true)
  end
  
  it "accurately identifies non-prime numbers" do
    expect(is_prime?(4)).to eq(false)
    expect(is_prime?(9)).to eq(false)
    expect(is_prime?(21)).to eq(false)
    expect(is_prime?(45)).to eq(false)
    expect(is_prime?(100)).to eq(false)
  end
end

describe "#primes_through" do
  
end

describe "#n_primes" do
  
end
