module ReportHelper
  def total_value(collection)
    collection.inject(0) do |sum, c|
      sum + c.value * (c.type == 'Income' ? 1 : -1)
    end
  end
end
