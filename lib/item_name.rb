# typed: strong

class ItemName
  sig {params(value: String).returns(Object)}
  def initialize(value)
    @value = T.let(value, String)
  end
end
