module MyEnumerable
  def all?(list, pattern = nil)
    if block_given?
      list.each do |word|
      if !(yield word)
        return false
      end
      end
      return true
    elsif pattern != nil
      list.each do |word|
        if !(pattern === word)
          return false
        end
      end
      return true
    else 
      if list.include?(false) || list.include?(nil)
        return false
      end
      return true
    end
  end
  
  def any? (list, pattern = nil)
    if block_given?
      list.each do |word| 
        if (yield word) 
         return true
        end
      end
      return false
   elsif pattern != nil
    list.each do |word| 
      if pattern === word 
        return true
      end
    end
    return false  
  else 
    list.each do |word|
      if word 
         return true
      end
    end 
    return false
  end
end
end
include MyEnumerable

#puts MyEnumerable.all?([56, 11, 99], Integer)
