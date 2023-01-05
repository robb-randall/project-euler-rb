# frozen_string_literal: true

require 'project_euler/helpers.rb'
Dir[File.join(__dir__, 'project_euler', 'problems', '*.rb')].sort.each { |file| require file }

# Project Euler helper functions
module ProjectEuler
  VERSION = 1.0

  include Helpers
  extend Problems
end
