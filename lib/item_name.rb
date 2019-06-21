# typed: strong

class ItemName
  sig {params(value: String).void}
  def initialize(value)
    @value = T.let(value, String)
  end
end
