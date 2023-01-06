# frozen_string_literal: true

require 'project_euler'

RSpec.describe ProjectEuler do
  describe '#problem001' do
    it 'sums all multiple of 3 and 5 below 10' do
      expect(described_class.problem001(10, 3, 5)).to eq(23)
    end

    it 'sums all multiple of 3 and 5 below 1,000' do
      expect(described_class.problem001(1_000, 3, 5)).to eq(233_168)
    end
  end

  describe '#problem002' do
    it 'sums all even number in the Fib sequence below 4 million' do
      expect(described_class.problem002(4_000_000, 2)).to eq(4_613_732)
    end
  end

  describe '#problem003' do
    it 'largest prime factor for 13,195' do
      expect(described_class.problem003(13_195)).to eq(29)
    end

    it 'largest prime factor for 600,851,475,143' do
      expect(described_class.problem003(600_851_475_143)).to eq(6_857)
    end
  end

  describe '#problem004' do
    it 'largest palindrome made from the product of two 2-digit numbers' do
      expect(described_class.problem004(10, 99)).to eq(9_009)
    end

    it 'largest palindrome made from the product of two 3-digit numbers' do
      expect(described_class.problem004(100, 999)).to eq(906_609)
    end
  end

  describe '#problem005' do
    it 'smallest possible number divisible by all numbers between 1 and 10' do
      expect(described_class.problem005(1, 10)).to eq(2_520)
    end

    it 'smallest possible number divisible by all numbers between 1 and 20' do
      expect(described_class.problem005(1, 20)).to eq(232_792_560)
    end
  end

  describe '#problem006' do
    it 'difference between the sum of the squares of the first 10 natural numbers and the square of the sum' do
      expect(described_class.problem006(10)).to eq(2_640)
    end

    it 'difference between the sum of the squares of the first 100 natural numbers and the square of the sum' do
      expect(described_class.problem006(100)).to eq(25_164_150)
    end
  end

  describe '#problem007' do
    it 'lists the sixth prime number' do
      expect(described_class.problem007(6)).to eq(13)
    end

    it 'lists the 10,001st prime number' do
      expect(described_class.problem007(10_001)).to eq(104_743)
    end
  end
end
