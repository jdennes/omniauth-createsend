# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "omniauth/createsend/version"

Gem::Specification.new do |s|
  s.name          = "omniauth-createsend"
  s.version       = OmniAuth::CreateSend::VERSION
  s.platform      = Gem::Platform::RUBY
  s.author        = "James Dennes"
  s.email         = ["jdennes@gmail.com"]
  s.summary       = "Official OmniAuth strategy for the Campaign Monitor API."
  s.description   = "The official OmniAuth strategy for authenticating with the Campaign Monitor API."
  s.homepage      = "https://github.com/jdennes/omniauth-createsend/"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map { |f| File.basename(f) }
  s.require_paths = ["lib"]
  s.licenses      = ["MIT"]

  s.add_runtime_dependency "omniauth-oauth2", "~> 1.1"
  s.add_development_dependency "rspec", "~> 3.0"
  s.add_development_dependency "rack-test", "~> 0.6"
  s.add_development_dependency "webmock", "~> 1.0"
  s.add_development_dependency "rake", "~> 10.0"
  s.add_development_dependency "simplecov", "~> 0"
  s.add_development_dependency "coveralls", "~> 0"
end
