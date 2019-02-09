# Write your code here.

def line (line)
  counter = 0 
  line_list = []
    
  if line.length == 0 
    puts "The line is currently empty."
  else

    while counter < line.length
    line_list.push("#{counter+1}. #{line[counter]}")
    counter += 1
    end
  puts "The line is currently: #{line_list.join(" ")}"
  end
end


def take_a_number (line, name)
  if line.length == 0 || line.length > 0
    line << name
  else
    nil
  end
  puts "Welcome, #{line[-1]}. You are number #{line.length} in line."
end


def now_serving (line_array)

  if line_array.length == 0 
    puts "There is nobody waiting to be served!"
  else
     puts "Currently serving #{line_array.shift}."
    
  end
end