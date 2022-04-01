
module MyEnumerable
  def all?
    each { |e| return false unless yield e }
    true
  end

  def any?
    each { |e| return true unless yield e }
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
