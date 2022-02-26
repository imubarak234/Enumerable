module MYENUMERABLEANY
  def any(&block)
    result = false
    each do |element|
      result = true if block.call(element)
    end
    puts result
  end
end
