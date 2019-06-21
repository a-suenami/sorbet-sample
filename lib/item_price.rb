# typed: strong

class ItemPrice
  sig {params(value: Integer).returns(Object)}
  def initialize(value)
    @value = T.let(value, Integer)
  end

  sig {params(tax_rate: TaxRate).returns(ItemPriceWithTax)}
  def with_tax(tax_rate)
    price_with_tax = (@value * (1.0 + tax_rate.value)).to_i
    ItemPriceWithTax.new(price_with_tax)
  end
end
