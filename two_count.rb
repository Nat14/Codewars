def two_count(n)
  i = 0
  while n%2 == 0 do
    n = n/2
    i += 1
  end
  return i
end
