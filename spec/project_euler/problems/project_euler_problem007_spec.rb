# frozen_string_literal: true

require 'project_euler'

RSpec.describe ProjectEuler do
  describe '#problem007' do
    it 'lists the sixth prime number' do
      expect(described_class.problem007(6)).to eq(13)
    end

    it 'lists the 10,001st prime number' do
      expect(described_class.problem007(10_001)).to eq(104_743)
    end
  end
end
