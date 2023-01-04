# frozen_string_literal: true

Dir[File.join(__dir__, 'project_euler', '*.rb')].sort.each { |file| require file }

# Project Euler helper functions
module ProjectEuler
  VERSION = 1.0

  extend Helpers
  extend Problems
end
