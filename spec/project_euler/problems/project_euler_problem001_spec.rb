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
end
