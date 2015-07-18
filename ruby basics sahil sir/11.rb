#!/usr/bin/ruby
require 'io/console'
print "Enter Password: "
password = STDIN.noecho(&:gets).chomp
puts password

