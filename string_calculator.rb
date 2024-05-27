class StringCalculator
  def self.add(numbers)
    # Split the string using commas or newlines as delimiters
    numbers.split(/,|\\n/).map(&:to_i).sum
  end
end
