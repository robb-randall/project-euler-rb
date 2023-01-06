# frozen_string_literal: true

require 'project_euler'

RSpec.describe ProjectEuler do
  describe '#problem004' do
    it 'largest palindrome made from the product of two 2-digit numbers' do
      expect(described_class.problem004(10, 99)).to eq(9_009)
    end

    it 'largest palindrome made from the product of two 3-digit numbers' do
      expect(described_class.problem004(100, 999)).to eq(906_609)
    end
  end
end
