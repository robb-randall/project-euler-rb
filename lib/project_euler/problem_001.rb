# frozen_string_literal: true

# Problem 001
module Problems
  def problem001(below, *multiples)
    sum = 0

    below.times do |n|
      multiples.each do |multiple|
        next unless (n % multiple).zero?

        sum += n

        break
      end
    end
    sum
  end
end
