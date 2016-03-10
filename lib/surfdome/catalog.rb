require 'singleton'

module Surfdome
  class Catalog
    include Singleton

    def initialize
      @products = [
        Product.new('T01',  'T-Shirt',    19.99),
        Product.new('S01',  'Shorts',     14.99),
        Product.new('SK01', 'Skateboard', 85)
      ]
    end

    def all
      products
    end

    def get(sku)
      products.find { |product| product.sku == sku }
    end

    private

    attr_reader :products

  end
end