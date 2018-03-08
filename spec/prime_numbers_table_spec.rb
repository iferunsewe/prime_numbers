require 'spec_helper'

RSpec.describe PrimeNumbersTable do
  subject(:build_prime_numbers_table) { described_class.new(number) }
  let(:arr_of_prime_numbers){ Prime.first(number) }
  let(:table){  build_prime_numbers_table.table  }
  let(:number) { 10 }

  context '#build' do
    it 'returns a table' do
      expect(table).to be_kind_of(Terminal::Table)
    end

    it 'returns a number of columns which is the number of prime numbers plus 1 for column headings' do
      expect(table.number_of_columns).to eq number + 1
    end

    it 'returns a number of rows which is the number of prime numbers' do
      expect(table.rows.count).to eq number
    end

    it 'returns a first column of all n original prime numbers' do
      expect(table.columns[0]).to eq arr_of_prime_numbers
    end

    it 'returns a table where the cells are the result of multiplying two prime numbers' do
      p_n1 = arr_of_prime_numbers.sample
      p_n2 = arr_of_prime_numbers.sample
      original_n_prime_numbers = table.columns[0]
      index_of_p_n1_number = original_n_prime_numbers.find_index(p_n1)
      index_of_p_n2_number = original_n_prime_numbers.find_index(p_n2)
      expect(
        table.columns[index_of_p_n1_number + 1][index_of_p_n2_number]
      ).to eq p_n1 * p_n2
    end
  end
end
