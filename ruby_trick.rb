def find_outlier(integers)
  integers.partition(&:odd?).find(&:one?).first
end

(1..6).partition { |v| v.even? }  #=> [[2, 4, 6], [1, 3, 5]]
[1,2,3,4,5].partition(&:odd?) #=> [[1, 3, 5], [2, 4]]

(1..6).map.with_index { |x,i| i.even? ? 1 : 0 } #=> [1, 0, 1, 0, 1, 0]

########

n # => "3542987678652346"
n.split(//).map(&:to_i) # => [3, 5, 4, 2, 9, 8, 7, 6, 7, 8, 6, 5, 2, 3, 4, 6]
n.split(//).map(&:to_i).reduce(&:+) #=> 85
n.split(//).map(&:to_i).inject(&:+) #=> 85
n.split(//).map(&:to_i).reduce(:+) #=> 85
n.split(//).map(&:to_i).inject(:+) #=> 85

a = [[10, 0], [3, 5], [5, 8]]
a.inject(:+) #=> [10, 0, 3, 5, 5, 8]
a.inject(:+).inject(:+) #=> 5
a.map {|(x, y)| x - y } #=> [10, -2, -3]
a.map {|(x, y)| x - y }.reduce(:+) #=> 5

#########
rate = %w(terrible poor good great excellent).index(rating.downcase)  #=> case when in short
  return 'Rating not recognised' unless rate

#########

[[1,2,2,3,4,4,2,2],[5,8,8,9]].map(&:last) #=> [2, 9]
