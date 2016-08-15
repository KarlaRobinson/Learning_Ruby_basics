def multiplication_tables(num)
  arr = Array(1..num)
  range = Array(1..10)
  arr.each do |arrElem|
    range.each do |rangeElem|
      value = arrElem * rangeElem
      print "#{value}\t"
    end
    print "\n"
  end
end

multiplication_tables(5)

multiplication_tables(7)