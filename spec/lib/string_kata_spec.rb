require 'rails_helper'

RSpec.describe StringKata do
  describe 'StringKata' do
    it 'for empty string return zero' do
      expect(StringKata.add("")).to eq(0)
    end

    it 'for empty string return zero' do
      expect(StringKata.add(nil)).to eq(0)
    end

    it 'for a single number returns the number' do
      expect(StringKata.add("10")).to eq(10)
    end

    it 'for two numbers separated by a comma returns the sum ' do
      expect(StringKata.add("1,5")).to eq(6)
    end

    it 'handles newlines between numbers' do
      expect(StringKata.add("1\n2,3")).to eq(6)
    end

    it 'handles custom delimiters' do
      expect(StringKata.add("//;\n1;2;4;6")).to eq(13)
    end

    it 'raises an error when a negative number is included' do
      expect { StringKata.add("1,-2,3") }.to raise_error("negative numbers not allowed -2")
    end
  end
end
