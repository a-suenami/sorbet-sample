# typed: strong

class ItemId
  sig {params(value: Integer).returns(Object)}
  def initialize(value)
    @value = T.let(value, Integer)
  end
end
