class Table
  def initialize(data)
    @data = data
  end

  def to_s
    data2 = @data.map { |ar| ar.join('  ') }
    data_formatted = data2.join("\n   ")
  end
end
