#!/usr/bin/env ruby
require 'terminal-table'
require 'Prime'
require_relative 'generic_table'
require_relative 'prime_numbers_table'
require_relative 'fibonacci_numbers_table'


if $0 == __FILE__
	number = ARGV[0]
 arg = ARGV[1]
 case arg
 when 'prime'
 	table = PrimeNumbersTable.new(number)
 when 'fib' 
 	table = FibonacciNumbersTable.new(number)
end
	puts table.table
end

