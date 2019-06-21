# typed: strong

class ItemId
  sig {params(value: Integer).void}
  def initialize(value)
    @value = T.let(value, Integer)
  end
end
