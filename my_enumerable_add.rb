module MYENUMERABLEADD
  def all(&block)
    count = 0
    count1 = 0
    each do |element|
      count += 1 if block.call(element)
      count1 += 1
    end
    puts count == count1
  end
end

# list = [1,2,4,5,6]
# puts list.all? {|e| e < 7}
