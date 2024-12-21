require 'rails_helper'

RSpec.describe StringKata do
  describe 'StringKata' do
    it 'for empty string return zero' do
      expect(StringKata.add("")).to eq(0)
    end

    it 'for a single number returns the number' do
      expect(StringKata.add("10")).to eq(10)
    end
  end
end
