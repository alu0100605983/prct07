
$:.unshift File.dirname(__FILE__) + 'lib'
$:.unshift '.lib', './test'

require 'rspec/core/rake_task'
Rspec::Core::RakeTask.new
task :default => :tu



desc "Pruebas unitaria de la clase fraccion"
task :tu do
	sh "rspec -I. test/pruebas_spec.rb"
end

desc "Documentacion"
task :doc do
	sh "cat README.txt"
end
