#!/usr/bin/env ruby

require 'json'

# argf.rb
lines = Array.new
ARGF.each do |line|
  #puts line
  lines.push(line)
end
json = lines.join(' ')
jsonHash = JSON.parse(json)
puts jsonHash['clusters']
