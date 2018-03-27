class FibonacciNumbersTable
  attr_reader :table

  def initialize(number)
    @number = number.to_i
    @table = build_table
  end

  def build_table
    GenericTable.new(create_sequence).table
  end

  def create_sequence
    return [1] if @number == 1
    return [1, 1] if @number == 2
    seed = [1, 1]
    while seed.count < @number
      new_fib = seed[-1] + seed[-2]
      seed << new_fib
    end
    seed
  end
end