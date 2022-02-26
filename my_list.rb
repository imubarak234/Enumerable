require_relative 'my_enumerable_add'
require_relative 'my_enumerable_filter'
require_relative 'my_enumerable_any'

class MyList
  include MYENUMERABLEADD
  include MYENUMERABLEANY
  include MYENUMERABLEFILTER

  def initialize(*arr)
    @list = arr
  end

  def each(&block)
    @list.each(&block)
    self
  end
end

list = MyList.new(1, 2, 3, 4)
list.all { |e| e > 5 }
list.any { |e| e == 2 }
list.any { |e| e == 5 }
list.filter(&:even?)
