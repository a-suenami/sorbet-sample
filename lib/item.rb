# typed: strong

class Item
  sig { returns(ItemId) }
  attr_reader :id

  sig { returns(ItemName) }
  attr_reader :name

  sig { returns(ItemPrice) }
  attr_reader :price

  sig {params(id: ItemId, name: ItemName, price: ItemPrice).void}
  def initialize(id, name, price)
    @id = T.let(id, ItemId)
    @name = T.let(name, ItemName)
    @price = T.let(price, ItemPrice)
  end

  sig {returns(ItemPriceWithTax)}
  def price_with_tax
    tax_rate = TaxRate.new(0.08)
    self.price.with_tax(tax_rate)
  end
end
