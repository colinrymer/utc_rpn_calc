require 'utc_rpn_calc/core_ext/string'
require 'utc_rpn_calc/core_ext/fixnum'

module UtcRpnCalc
  class Calculator

    ERROR = "BLARGH!"
    FFFF = "FFFF".hex

    def initialize(input)
      @inputs = input.gsub('X', '^').split
      @stack = []
    end

    def calculate
      @inputs.each do |input|
        return ERROR unless acceptable_input?(input)
        process_input(input)
      end

      @stack.pop.to_formatted_hex
    end

    private

    def acceptable_input?(input)
      input.valid_number? || has_necessary_operands?(input)
    end

    def process_input(input)
      @stack.push(result(input))
    end

    def result(input)
      input.valid_number? ? input.hex : compute(input)
    end

    def has_necessary_operands?(operation)
      @stack.length > (operation.negation_operation? ? 0 : 1)
    end

    def compute(operation)
      operation.negation_operation? ? compute_negation : compute_with_operands(operation, @stack.pop(2))
    end

    def compute_negation
      @stack.pop.negate
    end

    def compute_with_operands(operation, operands)
      raw_result = operands.first.send(operation, operands.last)
      valid_result(raw_result)
    end

    def valid_result(result)
      if result > FFFF
        FFFF
      elsif result < 0
        0
      else
        result
      end
    end

  end
end
