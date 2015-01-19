require "bundler/gem_tasks"
require "rspec/core/rake_task"

desc "Run specs"
RSpec::Core::RakeTask.new(:spec)

desc "Build the gem"
task :build do
  system "gem build omniauth-createsend.gemspec"
end

desc "Build and release the gem"
task :release => :build do
  system "gem push omniauth-createsend-#{OmniAuth::CreateSend::VERSION}.gem"
end

task :default => :spec
