# frozen_string_literal: true

require 'project_euler/helpers'

RSpec.describe Helpers do
  describe 'Helpers' do
    describe '#divisible?' do
      it 'returns true when dividend is divided equally by divisor' do
        expect(described_class.divisible?(100, 2)).to be true
      end

      it 'returns true when dividend is divided equally by all divisors' do
        expect(described_class.divisible?(100, 5, 2)).to be true
      end

      it 'returns false when dividend is not equally divided by divisor' do
        expect(described_class.divisible?(100, 99)).to be false
      end

      it 'returns false when dividend is not equally divided by any divisor' do
        expect(described_class.divisible?(100, 2, 99)).to be false
      end
    end

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

    describe '#palindrome?' do
      it 'returns true for a single letter string' do
        expect(described_class.palindrome?('a')).to be true
      end

      it 'returns true for a single digit number' do
        expect(described_class.palindrome?(1)).to be true
      end

      it 'returns true for palindrome string of even length' do
        expect(described_class.palindrome?('abccba')).to be true
      end

      it 'returns true for palindrome integer of even length' do
        expect(described_class.palindrome?(123_321)).to be true
      end

      it 'returns true for palindrome string of odd length' do
        expect(described_class.palindrome?('abcba')).to be true
      end

      it 'returns true for palindrome integer of odd length' do
        expect(described_class.palindrome?(12_321)).to be true
      end

      it 'returns false for non-palindrome string' do
        expect(described_class.palindrome?('abc')).to be false
      end

      it 'returns false for non-palindrome integer' do
        expect(described_class.palindrome?(123)).to be false
      end
    end

    describe '#prime_factors' do
      it 'takes 1 and returns [1]' do
        expect(described_class.prime_factors(1)).to eq([1])
      end

      it 'takes 2 and returns [1, 2]' do
        expect(described_class.prime_factors(2)).to eq([1, 2])
      end

      it 'takes 3 and returns [1, 3]' do
        expect(described_class.prime_factors(3)).to eq([1, 3])
      end

      it 'takes 4 and returns [2, 2]' do
        expect(described_class.prime_factors(4)).to eq([2, 2])
      end

      it 'takes 5 and returns [1, 5]' do
        expect(described_class.prime_factors(5)).to eq([1, 5])
      end

      it 'takes 13,195 and returns [5, 7, 13, 29]' do
        expect(described_class.prime_factors(13_195)).to eq([5, 7, 13, 29])
      end
    end
  end
end
