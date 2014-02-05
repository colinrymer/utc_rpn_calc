class String
  NUMERIC_INPUT = /\A[a-fA-F0-9]+\z/

  def valid_number?
    !!match(NUMERIC_INPUT)
  end

  def negation_operation?
    self == "~"
  end
end
