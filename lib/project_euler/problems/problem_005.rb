# frozen_string_literal: true

# Problem 005
module Problems
  def problem005(min_value, max_value)
    # TODO: This solution needs optimization
    current_value = max_value
    divisors = (min_value..max_value).to_a

    while current_value += max_value
      return current_value if Helpers.divisible?(current_value, *divisors)
    end
  end
end
