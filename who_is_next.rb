def whoIsNext(names, r)
  n = 1
  queue = names.length
  double = names.length
  while queue < r do
    double = double * 2
    queue = queue + double
    n += 1
  end
  puts queue
  puts double
  puts n
  puts double/names.length
  puts ((r - (queue - double)) / (double.fdiv(names.length)))
  puts r = ((r - (queue - double)) / (double.fdiv(names.length))).ceil
  r = 1 if r == 0.0
  puts r
  puts (double.fdiv(names.length))
  return names[r-1]
end
whoIsNext(["Sheldon", "Leonard", "Penny", "Rajesh", "Howard"], 2)
