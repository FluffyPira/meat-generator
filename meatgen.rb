#!/usr/bin/env ruby
first = File.readlines("textfiles/first.txt").shuffle.pop.strip
last = File.readlines("textfiles/last.txt").shuffle.pop.strip
puts "#{first} #{last}"