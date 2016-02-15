def weirdcase string
  i = 0
  m = ""
  n = string.split(//)
  n.map do |x|
    if x == " "
      i = 0
      m += " "
    else
      if i%2==0
        m += x.upcase
      else
        m += x.downcase
      end
      i += 1
    end
  end
  return m
end

puts weirdcase "This is a test"
