def mutate (chromosome, p)
 arr = chromosome.split(//)
  if p>0 && p<1
    arr.map.with_index {|x, i| i%2==0? "0" : "1"}.join
  elsif p == 1
    arr.map {|x| x=="1"? "0" : "1"}.join
  else
    arr.join
  end
end
