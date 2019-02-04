katz_deli = []

def line(katz_deli)
  if katz_deli.size == 0
    puts "The line is currently empty."
  else
    katzdeli = katz_deli.map.with_index do |name, i|
      "#{i+1}. #{name}"
    end
    puts "The line is currently: " + katzdeli.join(" ")
  end
  
  end


def take_a_number(katz_deli, name)
  katz_deli << name
  katz_deli.each.with_index do |name, i|
    puts "Welcome, #{name}. You are number #{i+1} in line."
  end
end

def now_serving(katz_deli)
  if katz_deli.size == 0
    puts "There is nobody waiting to be served!"
  else
    head = katz_deli.shift
    katz_deli
    puts "Currently serving #{head}"
  end
end