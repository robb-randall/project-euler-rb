# frozen_string_literal: true

require 'project_euler/helpers'
Dir[File.join(__dir__, 'project_euler', 'problems', '*.rb')].sort.each { |file| require file }

# Project Euler helper functions
module ProjectEuler
  include Helpers
  extend Problems
end
