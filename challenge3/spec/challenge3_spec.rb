require 'spec_helper'
require_relative '../lib/challenge3'

describe Challenge3 do
  it '#rewrite verification 1' do
    # arrange
    challenge3 = Challenge3.new('aaabbbccaadd')
    
    # act
    result = challenge3.input_string

    # assert
    expect(result).to eq('aaabbbccaadd')
  end


  it '#rewrite verification 2' do
    # arrange
    challenge3 = Challenge3.new('aaabbbccaadd')
    
    # act
    result = challenge3.rewrite

    # assert
    expect(result).to eq('3a3b2c2a2d')
  end

  it '#rewrite verification 3' do
    # arrange
    some_string = %w(a z a z a z a z a z).inject('') do |result, string|
      result + string * string.ord
    end

    challenge3 = Challenge3.new(some_string)
    
    # act
    result = challenge3.rewrite

    # assert
    expect(result).to eq('97a122z97a122z97a122z97a122z97a122z')
  end
end
