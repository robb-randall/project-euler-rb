# frozen_string_literal: true

# Problem 003
module Problems
  def problem003(number)
    Helpers.prime_factors(number).max
  end
end
