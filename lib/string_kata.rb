class StringKata
  def self.add(string_number)
    return 0 if string_number.empty?
    string_number.split(/[\n,]/).map(&:to_i).sum
  end
end
