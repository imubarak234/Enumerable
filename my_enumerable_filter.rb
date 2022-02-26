module MYENUMERABLEFILTER
  def filter(&block)
    result = []
    each do |element|
      result << element if block.call(element)
    end
    puts result.to_s
  end
end
