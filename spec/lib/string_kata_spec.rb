require 'rails_helper'

RSpec.describe StringKata do
  describe 'StringKata' do
    it 'for empty string return zero' do
      expect(StringKata.add("")).to eq(0)
    end

    it 'for a single number returns the number' do
      expect(StringKata.add("10")).to eq(10)
    end

    it 'for two numbers separated by a comma returns the sum ' do
      expect(StringKata.add("1,5")).to eq(6)
    end
  end
end
