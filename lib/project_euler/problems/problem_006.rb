# frozen_string_literal: true

# Problem 006
module Problems
  def problem006(max_value)
    sum_of_squares = 0
    sum = 0

    1.upto(max_value) do |n|
      sum_of_squares += n**2
      sum += n
    end

    (sum**2) - sum_of_squares
  end
end
