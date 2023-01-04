# frozen_string_literal: true

require 'project_euler'

RSpec.describe ProjectEuler do
  describe 'Helpers' do
    describe '#fibonacci' do
      expected = [1, 2, 3, 5, 8, 13, 21, 34, 55, 89]
      actual = []

      described_class.fibonacci do |n|
        actual << n
        break if actual.length == expected.length
      end

      it 'returns the fibonacci sequence up to 10 numbers' do
        expect(actual).to eq(expected)
      end
    end

    describe '#prime_factors' do
      it 'takes 13195 and returns [5, 7, 13, 29]' do
        expect(described_class.prime_factors(13_195)).to eq([5, 7, 13, 29])
      end
    end
  end
end
