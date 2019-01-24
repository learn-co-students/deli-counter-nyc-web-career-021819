def line(line)
  if(line.size == 0)
    puts "The line is currently empty."
  else
    str = "The line is currently:"
    idx = 0
    line.each do |person|
      idx += 1
      str += " #{idx}. #{person}"
    end

    puts str
  end
end

def take_a_number(line, name)
  line.push(name)

  puts "Welcome, #{name}. You are number #{line.length} in line."
end

def now_serving(line)
  if (line.length == 0)
    puts "There is nobody waiting to be served!"
  else
    puts "Currently serving #{line.first}."
    line.shift()
  end
end
