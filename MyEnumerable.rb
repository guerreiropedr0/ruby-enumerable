module MyEnumerable
  def all?(list, reg_exp = nil)
    if block_given?
      list.each do |word|
      if !(yield word)
        return false
      end
      end
      return true
    elsif reg_exp != nil
      list.each do |word|
        if !word.match(reg_exp)
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
end

include MyEnumerable

puts MyEnumerable.all?(%w[ant beart cat], (/t/))
