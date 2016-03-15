require 'spec_helper'

RSpec.describe Surfdome::Basket do

  let(:basket) { described_class.new }

  describe "#total" do

    it "returns the correct total for a basket" do
      basket.add('T01')
      expect(basket.total).to eq(25.98)
    end

    it 'returns the correct total for a different product' do
      basket.add('S01')
      expect(basket.total).to eq(20.98)
    end

    it 'return the correct total for a basket total over £40' do
      basket.add('SK01')
      expect(basket.total).to eq(87.99)
    end

    it 'returns ths correct total for a basket total over £100' do
      basket.add('SK01')
      basket.add('SK01')
      expect(basket.total).to eq(170)
    end

    it 'can calculate the discount for a pair of t-shirts' do
      basket.add('T01')
      basket.add('T01')
      expect(basket.total).to eq(35.98)
    end

  end

  describe '#add' do

    it 'can add products to the basket contents' do
      expect { basket.add('T01') }.to change{ basket.contents.count }.from(0).to(1)
    end

  end

  describe '#discounts' do

    before do
      basket.add('T01')
      basket.add('T01')
    end


    it 'returns the correct discount amount for 2 t-shirts' do
      expect(basket.discounts).to eq(9.99)
    end

    it 'returns the correct discount for 3 t-shits' do
      basket.add('T01')
      expect(basket.discounts).to eq(9.99)
    end

  end

end
