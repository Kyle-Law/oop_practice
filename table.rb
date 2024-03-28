class Table
  def initialize(data)
    @data = data
  end

  def to_s
    rows.join("\n   ")
  end

  private

  def rows
    @data.map { |value| value.join('  ') }
  end
end
