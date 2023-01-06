# frozen_string_literal: true

require 'project_euler'

RSpec.describe ProjectEuler do
  describe '#problem002' do
    it 'sums all even number in the Fib sequence below 4 million' do
      expect(described_class.problem002(4_000_000, 2)).to eq(4_613_732)
    end
  end
end
