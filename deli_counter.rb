katz_deli = []

def line(katz_deli)
  current_line = []
  if katz_deli.empty?
    current_line.push("The line is currently empty.")
  else
    current_line.push("The line is currently:")
    place_in_line = 1
    katz_deli.each do |name|
      current_line.push("#{place_in_line}. #{name}")
      place_in_line += 1
    end
  end
  speaker = current_line.join(' ')
  puts speaker
end

def take_a_number(katz_deli, person)
  katz_deli.push(person)
  place_in_line = katz_deli.index(person) + 1
  puts "Welcome, #{person}. You are number #{place_in_line} in line."
end

def now_serving(katz_deli)
  if katz_deli.empty?
    puts "There is nobody waiting to be served!"
  else
    next_person = katz_deli[0]
    puts "Currently serving #{next_person}."
    katz_deli.shift()
  end
end
