require_relative "project_euler/problem_001"
require_relative "project_euler/problem_002"

module ProjectEuler
  def self.fibonacci(a = 1, b = 2)
    seq = [1, 2]

    while true
      yield seq.first
      seq = [seq.last, seq.first + seq.last]
    end
  end
end
