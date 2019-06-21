# typed: strong

class TaxRate
  sig { returns(Float) }
  attr_reader :value

  sig {params(value: Float).void}
  def initialize(value)
    @value = T.let(value, Float)
  end
end
