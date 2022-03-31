require 'MyEnumerable'

class MyList
include MyEnumerable
  def initiliaze()
  @list
  end

  def each
  yield
  end
end

