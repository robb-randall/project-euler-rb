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
    factors = []
    divisor = 2

    if (number % divisor).zero?
      factors << divisor
      number /= divisor
    else
      divisor += 1
    end while number > 1

    factors
  end
end
