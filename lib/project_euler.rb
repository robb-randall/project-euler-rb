# frozen_string_literal: true

require_relative 'project_euler/problem_001'
require_relative 'project_euler/problem_002'

# Project Euler helper functions
module ProjectEuler
  def self.fibonacci
    seq = [1, 2]

    loop do
      yield seq.first
      seq = [seq.last, seq.first + seq.last]
    end
  end
end
