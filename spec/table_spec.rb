require_relative '../table'

RSpec.describe Table do
  describe '#to_s' do
    it 'converts an array of data into a plain text table with the Rank column right-aligned and the Name column left-aligned' do
      data = [
        %w[Rank Name],
        [1, 'Burj Khalifa'],
        [2, 'Shanghai Tower']
      ]
      table = Table.new(data)

      expected_output = <<~OUTPUT.strip
        Rank  Name
           1  Burj Khalifa
           2  Shanghai Tower
      OUTPUT

      expect(table.to_s).to eq(expected_output)
    end
  end
end
