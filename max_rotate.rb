
def rotate(m)
  m.split(//).rotate.join
end

def max_rot(n)

  n = n.to_s
  array = [n]
  array[1] = rotate(n)

  (2..n.length-1).each do |x|
      m = array[x-1].split(//,2)[-1]
      array[x] = rotate(m).to_s
  end

  (2..array.length-1).each do |x|
      array[x] = array[x-1].slice(0,x-1) + array[x]
  end
  return array.max
end
max_rot(38458215)
