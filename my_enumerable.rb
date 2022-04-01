
module MyEnumerable
  def all?
    Each do |item| 
      return false unless yield item
      return true
      end
  end

  def any?
    Each do |item| 
      return true if yield item
      return false
      end
  end
  
  def filter
    @filtered_array = []
    Each do |item| 
      if yield item
        @filtered_array << item
      end
    end
    return @filtered_array
    
  end
end
