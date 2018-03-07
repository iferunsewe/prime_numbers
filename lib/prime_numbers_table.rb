#!/usr/bin/env ruby

require 'terminal-table'
require 'Prime'

class PrimeNumbersTable
  attr_reader :table

  def initialize(number)
    raise ArgumentError, "#{number} is not an integer" unless number.is_a? Integer
    @number = number.to_i
    @table = Terminal::Table.new
  end

end
