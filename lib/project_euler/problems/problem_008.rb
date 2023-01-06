# frozen_string_literal: true

# Problem 008
module Problems
  def problem008(number_array, adjacent_numbers)
    number_array = number_array.to_s.scan(/\d/).map(&:to_i)

    largest_product = 0

    lower_index = 0
    upper_index = adjacent_numbers - 1

    while upper_index < number_array.length
      product = number_array[lower_index..upper_index].inject(:*)
      largest_product = product if product > largest_product

      lower_index += 1
      upper_index += 1
    end

    largest_product
  end
end
