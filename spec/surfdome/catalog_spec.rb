require 'spec_helper'

RSpec.describe Surfdome::Catalog do

  describe "#all" do

    it "returns three products" do
      expect(described_class.instance.all.length).to eq(3)
    end

  end

  describe "#get" do

    let(:known_skus) { ["T01", "S01", "SK01"] }

    it "returns a product for known skus" do
      known_skus.each do |sku|
        expect(described_class.instance.get(sku)).to be_a(Surfdome::Product)
      end
    end

    it "returns a product with a matching sku" do
      known_skus.each do |sku|
        expect(described_class.instance.get(sku).sku).to eq(sku)
      end
    end
    
  end

end