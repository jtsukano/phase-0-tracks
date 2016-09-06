6.times { |x| puts "This will run #{x} times" }

#Release 1 Each and Map!
names= [ "bob", "cindy", "jane"]

names.map do |names|
    puts names
    p names.capitalize
    end
    
    p names

    names.each do |names|
    puts names
    p names.capitalize
    end
    
    p names

    names.map! do |names|
    puts names
    p names.capitalize
    end
    p names

    bio = { name: "bob", height: "tall", birthmonth: "Sep"}


p bio

  bio.each do |key, value|
  	  puts "#{key} is #{value}"
  	  end

  	  bio.each do |key, value|
  	  puts "#{key} is #{value}"
  	  end

ages= [1, 2, 3, 4, 5, 6, 7, 8]
p ages


 ages.keep_if { |v| v <= 5}  
 p ages

 ages.delete_if { |v| v > 5}  
 p ages


p ages.select {|v| v.even?}
 
 p ages.drop_while {|v| v < 4}
 p ages


