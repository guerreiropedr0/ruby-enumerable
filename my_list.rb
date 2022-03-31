require './my_enumerable'

class MyList
  include MyEnumerable
  
  #attr_accessor :list
  def initialize(*list)
     @list = list
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
list.all? {|e| puts e * 2}
#list.Each { |i| puts i * 2 }

