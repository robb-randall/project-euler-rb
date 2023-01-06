# frozen_string_literal: true

# Problem 007
module Problems
  def problem007(prime_count)
    number = 1

    while number += 1
      prime_count -= 1 if Helpers.prime? number
      return number if prime_count.zero?
    end

  end
end
