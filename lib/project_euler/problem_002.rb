# frozen_string_literal: true

# Problem 002
module Problems
  def problem002(below, *multiples)
    sum = 0

    ProjectEuler.fibonacci do |n|
      break if n > below

      multiples.each do |multiple|
        sum += n if (n % multiple).zero?
      end
    end

    sum
  end
end
