# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "properties/version"

Gem::Specification.new do |s|
  s.name            = 'properties'
  s.version         = Properties::VERSION
  s.platform        = Gem::Platform::RUBY
  s.summary         = "parse properties file"
  s.description     = "Simple gem to parse properties file"
  s.authors         = ["Martin Xu"]
  s.email           = ['martin.xus@gmail.com']
  s.files           = ["lib/hola.rb"]  
  s.homepage        = 'https://github.com/martinx/properties'
  s.files           = `git ls-files`.split("\n")
  s.test_files      = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.extra_rdoc_files= ['README.rdoc']
  s.require_paths   = ['lib']
  s.licenses        = ['MIT']
end