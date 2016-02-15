def travel(r, zipcode)
  address_arr = r.split(",").map {|x| x.split(/...\d{5}/)}
  address_arr.map! {|x| x[0].split(/\s/,2)}
  zip = r.split(",").map {|x| x.slice(-8,8)}
  address_arr.map.with_index { |x, i| x.push(zip[i])}
  address_arr.sort_by! { |x| x[2] }
  address_arr.select! { |x| x[2] == zipcode }
  address_arr.sort! {|x,y| y[1] <=> x[1]}
  result = zipcode + ":"
  address_arr.each do |x|
    result += x[1].rstrip + ","
  end
  result.chop!
  result += "/"
  address_arr.each do |x|
    result += x[0] + ","
  end
  result.chop!

end

r = "123 Main Street St. Louisville OH 43071,432 Main Long Road St. Louisville OH 43071,786 High Street Pollocksville NY 56432,54 Holy Grail Street Niagara Town ZP 32908,3200 Main Rd. Bern AE 56210,1 Gordon St. Atlanta RE 13000"
