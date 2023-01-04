# frozen_string_literal: true

require 'project_euler'

RSpec.describe ProjectEuler do
  describe 'Problems' do
    describe '#001' do
      it 'sums all multiple of 3 and 5 below 1000 equals 233,168' do
        expect(described_class.problem001(1_000, 3, 5)).to eq(233_168)
      end
    end

    describe '#002' do
      it 'sums all even number in the Fib sequence below 4 million equals 4,613,732' do
        expect(described_class.problem002(4_000_000, 2)).to eq(4_613_732)
      end
    end
  end
end
