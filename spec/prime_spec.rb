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
  two = [1, 2]
  ten = two + [3, 5, 7]
  twenty_two = ten + [11, 13, 17, 19]
  
  it "should return all primes <= n" do
    expect(primes_through(2)).to eq(two)
    expect(primes_through(10)).to eq(ten)
    expect(primes_through(22)).to eq(twenty_two)
  end
end

describe "#n_primes" do
  two = [1, 2]
  five = two + [3, 5, 7]
  nine = five + [11, 13, 17, 19]
  
  it "returns the correct number of primes" do
    expect(n_primes(2).length).to eq(2)
    expect(n_primes(5).length).to eq(5)
    expect(n_primes(9).length).to eq(9)
  end
  
  it "returns all the correct primes" do
    expect(n_primes(2)).to eq(two)
    expect(n_primes(5)).to eq(five)
    expect(n_primes(9)).to eq(nine)
  end
end
