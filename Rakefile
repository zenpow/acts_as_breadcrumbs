require 'rake'
require 'rdoc/task'
require 'rake/testtask'

desc 'Default: run unit tests.'
task :default => :test

desc 'Test the acts_as_breadcrumbs plugin.'
Rake::TestTask.new(:test) do |t|
  t.libs << 'lib'
  t.pattern = 'test/**/*_test.rb'
  t.verbose = true
end

desc 'Generate documentation for the acts_as_breadcrumbs plugin.'
RDoc::Task.new do |rdoc|
  rdoc.rdoc_dir = 'rdoc'
  rdoc.title    = 'ActsAsBreadcrumbs'
  rdoc.options << '--line-numbers' << '--inline-source'
  rdoc.rdoc_files.include('README')
  rdoc.rdoc_files.include('lib/**/*.rb')
end
