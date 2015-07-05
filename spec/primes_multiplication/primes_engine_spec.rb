require 'spec_helper'

describe PrimesEngine do
  it 'calculates correct primes' do
    first_25_primes = [2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67, 71, 73, 79, 83, 89, 97]
    expect( PrimesEngine.new.calculate(25) ).to eql(first_25_primes)
  end
end
