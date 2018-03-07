require 'spec_helper'

RSpec.describe PrimeNumbersTable do
  subject(:create_prime_numbers_table) { described_class.new(number) }

  context 'when you do not provide an integer' do
    let(:number) { 'X' }

    it 'raises an error' do
      expect{ create_prime_numbers_table }.to raise_error(ArgumentError, "#{number} is not an integer")
    end
  end

end
