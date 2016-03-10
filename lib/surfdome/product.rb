module Surfdome
  class Product
    def initialize(sku, name, price)
      @sku   = sku
      @name  = name
      @price = price
    end

    attr_reader :sku, :name, :price
  end
end