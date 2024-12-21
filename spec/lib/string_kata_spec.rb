require 'rails_helper'

RSpec.describe StringKata do
  describe 'StringKata' do
    it 'for empty string return zero' do
      expect(StringKata.add("")).to eq(0)
    end
  end
end
