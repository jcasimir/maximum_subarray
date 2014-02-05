class Subarray

  def self.greatest_from(input)
    input.max_by{|data| data.reduce(:+) }
  end

  def self.sum(input)
    input.reduce(:+)
  end
end
