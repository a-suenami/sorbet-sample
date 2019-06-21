# typed: true

class Main
  def self.main
    item = Item.new(ItemId.new(1), ItemName.new('プロテイン'), ItemPrice.new(3_000))
    puts item.inspect
  end
end
