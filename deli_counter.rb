katz_deli = []

def line(katz_deli)
	if katz_deli.length == 0
		puts "The line is currently empty."
	else
		current_line = "The line is currently: "
		katz_deli.each_with_index do |name, index|
			current_line += "#{index + 1}. #{name} "
		end
		puts current_line[0...-1]
	end
end

def take_a_number(katz_deli, name)
	if katz_deli.empty?
		katz_deli << name
		puts "Welcome, #{name}. You are number 1 in line."
	elsif name.split(" ").length == 1
		katz_deli << name
		puts "Welcome, #{name}. You are number #{katz_deli.index(name) + 1} in line."
	else
		arr = name.split(" ")
		arr.each do |name|
			katz_deli << name
		end
		katz_deli
	end
end

def now_serving(katz_deli)
	if katz_deli.empty?
		puts "There is nobody waiting to be served!"
	else
		puts "Currently serving #{katz_deli[0]}."
		katz_deli.delete_at(0)
	end
end
