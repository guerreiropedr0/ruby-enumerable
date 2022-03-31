
module MyEnumerable
  def all?(pattern = nil)
    if !pattern
    each { |e| return false unless yield e }
    true
    end
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
