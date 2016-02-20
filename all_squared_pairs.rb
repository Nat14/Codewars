def all_squared_pairs(num) 
  n = 0
  result = []
  while n**2 < num do
    m = num - n**2
    if Math.sqrt(m)%1 == 0
      Math.sqrt(m) < n ? result.push([Math.sqrt(m).to_i, n]) : result.push([n, Math.sqrt(m).to_i])
    end
    n += 1
  end
  return result.uniq
end
a = all_squared_pairs(25)
