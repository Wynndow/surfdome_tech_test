module Surfdome

  class Basket

    attr_reader :contents

    def initialize
      @contents = []
    end

    def add(sku)
      product = Catalog.instance.get(sku)
      @contents << product
    end

    def total
      total = @contents.inject(0){|total, item| total += item.price}
      total -= discounts
      postage = calculate_postage(total)
      (total + postage).round(2)
    end

    def discounts
      t_shirts = contents.select{ |item| item.sku == 'T01' }.count / 2
      t_shirts * 9.99
    end

    private

    def calculate_postage(total)
      return 5.99 if total < 40
      return 2.99 if total < 99.99
      0
    end

  end

end
