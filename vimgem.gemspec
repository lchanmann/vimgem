# -*- encoding: utf-8 -*-
require File.expand_path('../lib/vimgem/version', __FILE__)

Gem::Specification.new do |s|
  s.name        = "vimgem"
  s.version     = Vimgem::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Lim Chanmann"]
  s.email       = ["chanmannlim@gmail.com"]
  s.homepage    = "http://rubygems.org/gems/vimgem"
  s.summary     = "Browse your favorite gem source code"
  s.description = "This gem let you browse and read your favorite gem source code with Vim."

  s.required_rubygems_version = ">= 1.3.6"
  s.rubyforge_project         = "vimgem"

  s.executables = ["vimgem"]

  s.files        = `git ls-files`.split("\n")
  s.executables  = `git ls-files`.split("\n").select{|f| f =~ /^bin/}
  s.require_path = 'lib'
end
