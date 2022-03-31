
module MyEnumerable
  def all?(&block)
    Each {|item| yield item }
    # if block_given?
    #   list.each do |word|
    #     return false unless yield word
    #   end
    # elsif !pattern.nil?
    #   list.each do |word|
    #     return false unless pattern === word
    #   end
    # elsif list.include?(false) || list.include?(nil)
    #   return false

    # end
    # true
  end

  def any?(list, pattern = nil)
    if block_given?
      list.each do |word|
        return true if yield word
      end
    elsif !pattern.nil?
      list.each do |word|
        return true if pattern === word
      end
    else
      list.each do |word|
        return true if word
      end
    end
    false
  end
  
  def filter(list)
    filtered_array = []
    if block_given?
      list.each do |element|
        if yield element
          filtered_array.push(element)
        end
      end
      return filtered_array
    else return list
    end
  end
end
