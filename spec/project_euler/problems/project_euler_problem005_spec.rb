# frozen_string_literal: true

require 'project_euler'

RSpec.describe ProjectEuler do
  describe '#problem005' do
    it 'smallest possible number divisible by all numbers between 1 and 10' do
      expect(described_class.problem005(1, 10)).to eq(2_520)
    end

    it 'smallest possible number divisible by all numbers between 1 and 20' do
      expect(described_class.problem005(1, 20)).to eq(232_792_560)
    end
  end
end
