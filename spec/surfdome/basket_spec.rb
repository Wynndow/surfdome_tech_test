require 'spec_helper'

RSpec.describe Surfdome::Basket do

  describe "#total" do

    it "returns the correct total for a basket" do
      basket = described_class.new
      basket.add('T01')
      expect(basket.total).to eq(25.98)
    end

  end

end