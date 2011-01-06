$:.unshift(File.dirname(__FILE__)) unless
  $:.include?(File.dirname(__FILE__)) || $:.include?(File.expand_path(File.dirname(__FILE__)))

require 'lib/recur/version'

spec = Gem::Specification.new do |s|
  s.name = 'recur'
  s.homepage = 'http://github.com/drexin/recur'
  s.version = Recur::VERSION
  s.has_rdoc = true
  s.extra_rdoc_files = ['LICENSE', 'README.rdoc']
  s.summary = '#{s.name}-#{s.version}'
  s.description = 'Tail recursion for every ruby interpreter.'
  s.author = 'Dario Rexin'
  s.email = 'dario.rexin@r3-tech.de'
  
  s.files = %w(LICENSE Rakefile) + Dir.glob("{lib}/**/*")
  s.require_path = 'lib'
end