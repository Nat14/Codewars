def validate(n)
  k = n.split(//).reverse
  j = k.map.with_index { |x, i| i%2==0? x.to_i*1 : x.to_i*2>9? x.to_i*2-9 : x.to_i*2 }
  return j.inject(:+)%10 == 0
end


# n # => "3542987678652346"
# n.split(//).map(&:to_i) # => [3, 5, 4, 2, 9, 8, 7, 6, 7, 8, 6, 5, 2, 3, 4, 6]


# n.split(//).map(&:to_i).reduce(&:+) => 85
# n.split(//).map(&:to_i).inject(&:+) => 85
