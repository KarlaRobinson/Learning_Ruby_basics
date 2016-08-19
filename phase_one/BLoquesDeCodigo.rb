puts "Let's do some math:"
puts "3 + 4 = ?"
sleep(1)
p 3 + 4

puts "Time.now practice:"
puts Time.now
sleep(3)
puts Time.now


def to_roman(n)
    sm = ["I", "X", "C", "M"]
    med = ["V", "L", "D"]
    big = ["X", "C", "M"]

    holder = ""
    i = n.to_s.length
  n.to_s.split("").map{ |elem|elem.to_i}.each do |dig|
    i -= 1
    if dig == 9
      holder << sm[i] + big[i]
    elsif dig < 9 && dig > 4
      holder << med[i]
      (3 - (8 - dig)).times{ holder << sm[i]}
    elsif dig == 4
      holder << sm[i] + med[i]
    else
      dig.times{ holder << sm[i]}
    end
  end
    holder
end



puts"to_roman(1646) benchamark:"
require'benchmark'
time = Benchmark.realtime do
  to_roman(1646)
  to_roman(3)
  to_roman(4)
  end
p time * 1000