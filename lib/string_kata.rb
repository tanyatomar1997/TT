class StringKata
  def self.add(string_number)
    return 0 if string_number.empty?

    delimiter, processed_numbers = extract_delimiter_and_numbers(string_number)
    parsed_numbers = parse_numbers(processed_numbers, delimiter)

    validate_no_negatives!(parsed_numbers)

    parsed_numbers.inject(0, :+)
  end

  private

  # Extracts custom delimiter and the remaining numbers string
  def self.extract_delimiter_and_numbers(string_number)
    if string_number.start_with?("//")
      delimiter = string_number[2..string_number.index("\n") - 1]
      processed_numbers = string_number[string_number.index("\n") + 1..-1]
    else
      delimiter = /[\n,]/
      processed_numbers = string_number
    end
    [delimiter, processed_numbers]
  end

  # Parses the numbers using the given delimiter
  def self.parse_numbers(string_number, delimiter)
    string_number.split(delimiter).map(&:to_i)
  end

  # Validates that no negative numbers are present
  def self.validate_no_negatives!(numbers)
    negatives = numbers.select { |n| n < 0 }
    raise "negative numbers not allowed #{negatives.join(', ')}" if negatives.any?
  end
end
