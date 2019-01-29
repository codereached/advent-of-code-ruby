class Day1
  # Part a
  def self.get_frequency(data)
    data.inject(:+)
  end
  # Part b
  def self.find_duplicate(data, frequency = 0, frequencies = {})
    data.each do |input|
      frequency += input
      return frequency if frequencies[frequency]
      frequencies[frequency] = true
    end
    find_duplicate(data, frequency, frequencies)
  end
end