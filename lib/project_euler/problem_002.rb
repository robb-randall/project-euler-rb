module ProjectEuler


    def self.Problem002 below, *multiples

        sum = 0

        ProjectEuler.fibonacci do |n|
            break if n > below

            multiples.each do |multiple|
                sum += n if n % multiple == 0
            end

        end

        sum
    end

end