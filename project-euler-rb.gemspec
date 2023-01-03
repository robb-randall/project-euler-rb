# frozen_string_literal: true

lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require 'project_euler'

Gem::Specification.new do |spec|
  spec.name          = 'project-euler-rb'
  spec.version       = ProjectEuler::VERSION
  spec.authors       = ['Robb']
  spec.email         = ['robb.randall@gmail.com']

  spec.summary       = ''
  spec.description   = ''
  spec.homepage      = 'https://github.com/robb-randall/project-euler-rb'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.required_ruby_version = '>= 2.7.0'
  spec.add_development_dependency 'bundler', '>= 2.4.1'
  spec.add_development_dependency 'rake', '>= 13.0.6'
  spec.add_development_dependency 'rspec', '>= 3.12.0'
end
