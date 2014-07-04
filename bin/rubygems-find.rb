#!/usr/bin/env ruby

require 'json'
require 'rubygems-find/find'

if ARGV.empty?
  dir = "."
else
  dir = ARGV[0]
end

gemspecs = Gem.find(dir)
puts JSON.generate(gemspecs)
