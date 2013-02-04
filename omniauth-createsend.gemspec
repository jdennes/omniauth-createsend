# -*- encoding: utf-8 -*-
$:.push File.expand_path('../lib', __FILE__)
require 'omniauth/createsend/version'

Gem::Specification.new do |s|
  s.name     = 'omniauth-createsend'
  s.version  = OmniAuth::CreateSend::VERSION
  s.platform = Gem::Platform::RUBY
  s.author   = 'James Dennes'
  s.email    = ['jdennes@gmail.com']
  s.summary  = 'CreateSend strategy for OmniAuth'

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map { |f| File.basename(f) }
  s.require_paths = ['lib']

  s.add_runtime_dependency 'omniauth-oauth2', '~> 1.1'

  s.add_development_dependency 'rspec', '~> 2.7'
  s.add_development_dependency 'rake'
end
