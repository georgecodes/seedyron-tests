require 'rubygems'
require 'cucumber/rake/task'

Cucumber::Rake::Task.new("test:integration",
    "Run all tests that are valid in our integration environment") do |t|
  t.cucumber_opts = %w{--format progress -t ~@pending -t ~@notintegration}
end

Cucumber::Rake::Task.new("test:production",
    "Run all tests that are valid in our production environment") do |t|
  t.cucumber_opts = %w{--format progress -t ~@pending}
end

Cucumber::Rake::Task.new("test:wip",
  "Run only tests tagged @wip") do |t|
  t.cucumber_opts = %w{--format pretty -t @wip}
end

task :default => "test:wip"
