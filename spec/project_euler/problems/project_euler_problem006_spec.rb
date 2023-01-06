# frozen_string_literal: true

require 'project_euler'

RSpec.describe ProjectEuler do
  describe '#problem006' do
    it 'difference between the sum of the squares of the first 10 natural numbers and the square of the sum' do
      expect(described_class.problem006(10)).to eq(2_640)
    end

    it 'difference between the sum of the squares of the first 100 natural numbers and the square of the sum' do
      expect(described_class.problem006(100)).to eq(25_164_150)
    end
  end
end
