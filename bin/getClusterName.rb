#!/usr/bin/env ruby

require 'json'
# argf.rb
lines = Array.new

ARGF.readchar
puts ARGF.eof?

ARGF.each { |line| lines.push(line) }

puts 'Usage: aws eks list-clusters | ./getClusterName.rb' if lines.length == 0
json = lines.join(' ')
jsonHash = JSON.parse(json)
puts jsonHash['clusters']
