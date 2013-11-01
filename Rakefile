
$:.unshift File.dirname(__FILE__) + 'lib'

require 'rspec/core/rake_task'
Rspec::Core::RakeTask.new
task :default => :spec



desc "Pruebas unitaria de la clase fraccion"
task :spec do
	sh "rspec -I. test/pruebas_spec.rb"
end

desc "Documentacion"
task :doc do
	sh "cat README.txt"
end
