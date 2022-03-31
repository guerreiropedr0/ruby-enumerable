require './my_enumerable'

class MyList
  include MyEnumerable
  
  #attr_accessor :list
  def initialize(*list)
     @list = *list
   # @@list = list
  end

  # def test 
  #   @list.each { |item| puts item}
  #   end

  def Each(&block)
    @list.each(&block)
  end
end

list = MyList.new(1, 2, 3, 4)
#puts list.all? {|e| e < 5}
puts list.all? {|e| e > 5}
#list.Each { |i| puts i * 2 }

