class Fixnum
  def to_formatted_hex
    to_s(16).rjust(4,'0').upcase
  end

  def negate
      unsigned = ~self % (2**32)
      hex_string = unsigned.to_s(16)[-4,4]
      hex_string.hex
  end
end

