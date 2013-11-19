$:.unshift File.dirname(__FILE__) + 'lib'
$:.unshift './lib', './spec'
require "bundler/gem_tasks"
require 'rspec/core/rake_task'

RSpec::Core::RakeTask.new

task :default => :spec

desc "Ejecutamos las pruebas de clase Matriz con documentacion HTML"
task :thtml do
  sh "rspec -I. spec/matrices_spec.rb --format documentation"
end

desc "Ejecutamos las pruebas unitarias"
task :test do
  sh "rspec -I. spec/matrices_spec.rb --format documentation"
end

desc "Pruebas unitarias clase Matriz_densa y Dispersa"
task :tc do
	sh "ruby -I. test/tc_matrices.rb --format documentation"
end
