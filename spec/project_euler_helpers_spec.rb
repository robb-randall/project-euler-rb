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
  end
end
