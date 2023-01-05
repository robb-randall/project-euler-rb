# frozen_string_literal: true

# Project Euler Helper methods
module Helpers
  def divisible?(dividend, *divisors)
    divisors.each do |divisor|
      return false unless (dividend % divisor).zero?
    end
    true
  end

  def fibonacci
    seq = [1, 2]

    loop do
      yield seq.first
      seq = [seq.last, seq.first + seq.last]
    end
  end

  def palindrome?(obj)
    obj = obj.to_s unless obj.is_a? String

    lower_index = 0
    upper_index = obj.length - 1

    while lower_index < upper_index

      return false if obj[lower_index] != obj[upper_index]

      lower_index += 1
      upper_index -= 1
    end

    true
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
