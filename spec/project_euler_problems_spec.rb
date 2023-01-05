# frozen_string_literal: true

require 'project_euler'

RSpec.describe ProjectEuler do
  describe 'Problems' do
    describe '#problem001' do
      it 'sums all multiple of 3 and 5 below 1,000' do
        expect(described_class.problem001(1_000, 3, 5)).to eq(233_168)
      end
    end

    describe '#problem002' do
      it 'returns the sums all even number in the Fib sequence below 4 million' do
        expect(described_class.problem002(4_000_000, 2)).to eq(4_613_732)
      end
    end

    describe '#problem003' do
      it 'returns the largest prime factor for 600,851,475,143' do
        expect(described_class.problem003(600_851_475_143)).to eq(6_857)
      end
    end

    describe '#problem004' do
      it 'returns the largest palindrome made from the product of two 3-digit numbers' do
        expect(described_class.problem004(100, 999)).to eq(906_609)
      end
    end
  end
end
