require 'project_euler'

RSpec.describe ProjectEuler do


    describe 'Helper Functions' do
        describe '#fibonacci' do
            expected = [1, 2, 3, 5, 8, 13, 21, 34, 55, 89]
            actual = []

            ProjectEuler.fibonacci do |n|
                actual << n
                break if actual.length == expected.length
            end

            it 'returns the fibonacci sequence up to 10 numbers' do
                expect(actual).to eq(expected)
            end

        end

    end


    describe 'Problems' do
        describe '#001' do
            it 'sums all multiple of 3 and 5 below 1000 equals 233,168' do
                expect(ProjectEuler.Problem001(1_000, 3, 5)).to eq(233_168)
            end
        end

        describe '#002' do
            it 'sums all even number in the Fib sequence below 4 million equals 4,613,732' do
                expect(ProjectEuler.Problem002(4_000_000, 2)).to eq(4_613_732)
            end
        end
    end


end