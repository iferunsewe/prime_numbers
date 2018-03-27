RSpec.describe FibonacciNumbersTable do
  subject(:fibonacci_numbers_table) { described_class.new(number) }
  let(:number) { 10 }

  context '#create_sequence' do
    it 'returns an Array of the fibonacci numbers' do
      expect(fibonacci_numbers_table.create_sequence).to eq [1, 1, 2, 3, 5, 8, 13, 21, 34, 55]
    end
  end
end
