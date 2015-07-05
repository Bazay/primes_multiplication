require 'spec_helper'

describe Prime do
  it 'MIN_SIZE constant is an Integer' do
    expect(Prime::MIN_SIZE.is_a?(Integer)).to eql(true)
  end

  it 'MAX_SIZE constant is an Integer' do
    expect(Prime::MAX_SIZE.is_a?(Integer)).to eql(true)
  end
end
