# frozen_string_literal: true

# Project Euler Helper methods
module Helpers
  def fibonacci
    seq = [1, 2]

    loop do
      yield seq.first
      seq = [seq.last, seq.first + seq.last]
    end
  end

  def prime_factors(number)
    return [1] if number == 1

    factors = []
    divisor = 2

    while number > 1
      if (number % divisor).zero?
        factors << divisor
        number /= divisor
      else
        divisor += 1
      end
    end

    factors << 1 if factors.length == 1

    factors.sort
  end
end
