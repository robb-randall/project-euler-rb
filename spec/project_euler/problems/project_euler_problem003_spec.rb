# frozen_string_literal: true

require 'project_euler'

RSpec.describe ProjectEuler do
  describe '#problem003' do
    it 'largest prime factor for 13,195' do
      expect(described_class.problem003(13_195)).to eq(29)
    end

    it 'largest prime factor for 600,851,475,143' do
      expect(described_class.problem003(600_851_475_143)).to eq(6_857)
    end
  end
end
