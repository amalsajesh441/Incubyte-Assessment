class StringCalculator
  def self.add(numbers)
    negative =  numbers.scan(/(-\d)/)
    raise NegativeError.new(negative) if negative.any?
    delimiter = numbers.scan(/\/\/(.)/)&.first&.first # Get the delimiter character for the input
    numbers.gsub!(/\/\/#{delimiter}|\n/,'') if delimiter # if delimiter exist then replace //[delimiter]
    numbers.split(delimiter || /,|\\n/).map(&:to_i).sum # split the string with the delimiter found else split the string with , \n
  end
end
