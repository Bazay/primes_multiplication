require 'spec_helper'

describe PrimesMultiplication do
  it 'has a version number' do
    expect(PrimesMultiplication::VERSION).not_to be nil
  end

  it 'works with legal input' do
    prime = Prime.new({table: Prime::MIN_SIZE})
    expect{prime.run}.to_not raise_error(SystemExit)
  end

  it 'fails with illegal input' do
    prime = Prime.new({table: Prime::MIN_SIZE-1})
    expect{prime.run}.to raise_error(SystemExit)
  end
end
