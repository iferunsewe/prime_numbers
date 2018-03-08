#!/usr/bin/env ruby

require 'terminal-table'
require 'Prime'

class PrimeNumbersTable
  attr_reader :table

  def initialize(number)
    raise ArgumentError, "#{number} is not an integer" unless number.is_a? Integer
    @number = number.to_i
    @table = Terminal::Table.new
    build
  end

  def build
    table.rows = build_rows_with_column_headings
    table.headings = build_headings
    table
  end

  private

  def get_n_prime_numbers
    Prime.first(@number)
  end

  def build_rows
    get_n_prime_numbers.map do |p|
      get_n_prime_numbers.collect { |n| n * p if p.is_a? Integer }
    end
  end

  def build_headings
    get_n_prime_numbers.unshift('')
  end

  def build_rows_with_column_headings
    build_rows.map.with_index do |row, i|
      row.unshift(get_n_prime_numbers[i])
    end
  end
end
