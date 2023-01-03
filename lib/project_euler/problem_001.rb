module ProjectEuler


    def self.Problem001 below, *multiples

        sum = 0

        below.times do |n|

            multiples.each do |multiple|

                if n % multiple == 0

                    sum += n

                    break

                end

            end

        end
        sum
    end

end