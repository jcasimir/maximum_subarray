class Subarray
  def self.greatest_from(input)
    largest = input.first

    input.each do |data|
      if sum(data) > sum(largest)
        largest = data
      end
    end

    return largest
  end

  def self.sum(input)
    input.reduce(:+)

    #input.reduce(0){|sum, data| sum + data}

    # total = 0
    # input.each do |data|
    #   total = total + data
    # end
    # return total
  end
end
