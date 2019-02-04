deli =[]

def line(deli)
  message= "The line is currently:"
  if deli.length >0 
  deli.each.with_index(1) do |name, index|
    message +=" #{index}. #{name}"
  end
  puts message
  else 
puts "The line is currently empty."
end
end 

def take_a_number(deli,name)
  deli.push(name)
  puts "Welcome, #{name}. You are number #{deli.length} in line."
end

def now_serving(deli)
  if deli.length ==0
    puts "There is nobody waiting to be served!"
  else 
  puts "Currently serving " + deli[0] + "."
  deli.shift
end
end