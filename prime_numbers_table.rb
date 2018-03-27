class PrimeNumbersTable
  attr_reader :table

  def initialize(number)
    raise ArgumentError, 'Please provide a number of prime numbers to generate the table' if number.nil?
    @number = number.to_i
    @table = build_table
  end

  private

  def build_table
    GenericTable.new(get_n_prime_numbers).table
  end

  def get_n_prime_numbers
    Prime.first(@number)
  end
end

