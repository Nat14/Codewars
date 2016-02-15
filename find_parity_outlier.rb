def find_outlier(integers)
  arr = integers.map {|x| x%2}
  puts arr
  if arr.count(0) > 1
    return integers[arr.index(1)]
  else
    return integers[arr.index(0)]
  end
end

# def find_outlier(integers)
#   integers.partition(&:odd?).find(&:one?).first
# end

# (1..6).partition { |v| v.even? }  #=> [[2, 4, 6], [1, 3, 5]]
# [1,2,3,4,5].partition(&:odd?) #=> [[1, 3, 5], [2, 4]]
