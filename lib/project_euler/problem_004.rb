# frozen_string_literal: true

# Problem 004
module Problems
    def problem004 min_value, max_value

        largest_product = 0

        max_value.downto(min_value) do |n1|
            (n1-1).downto(min_value) do |n2|
                product = n1 * n2

                is_largest_product = product > largest_product && palindrome?(product)

                largest_product = product if is_largest_product

            end

        end

        return largest_product
    end
end
