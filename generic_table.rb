class GenericTable
  attr_reader :numbers, :table

  def initialize(numbers)
    @numbers = numbers
    @table = Terminal::Table.new
    build
  end

  private

  def build
    table.rows = build_rows_with_column_headings
    table.headings = build_headings
  end

  def build_rows
    numbers.map do |p|
      numbers.collect { |n| n * p if p.is_a? Integer }
    end
  end

  def build_headings
    numbers.unshift('')
  end

  def build_rows_with_column_headings
    build_rows.map.with_index do |row, i|
      row.unshift(numbers[i])
    end
  end
end
