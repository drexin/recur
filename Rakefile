# 
# To change this template, choose Tools | Templates
# and open the template in the editor.
 

require 'rubygems'
require 'rake'
require 'rake/clean'
require 'rake/rdoctask'
require 'rspec/core/rake_task'

Rake::RDocTask.new do |rdoc|
  files =['LICENSE', 'lib/**/*.rb']
  rdoc.rdoc_files.add(files)
  rdoc.title = "recur Docs"
  rdoc.rdoc_dir = 'doc/rdoc' # rdoc output folder
  rdoc.options << '--line-numbers'
end

desc "Run all specs"
RSpec::Core::RakeTask.new('spec') do |t|
  t.rspec_opts = ["--color"]
end
