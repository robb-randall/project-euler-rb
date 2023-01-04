# frozen_string_literal: true

# Project Euler Helper methods
module Helpers
  def fibonacci
    seq = [1, 2]

    loop do
      yield seq.first
      seq = [seq.last, seq.first + seq.last]
    end
  end
end
