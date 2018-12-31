katz_deli = []

def line(katz_deli)
	if katz_deli.length == 0
		puts "The line is currently empty."
	else
		customer_line = katz_deli.collect.with_index do |customer, index| 
			"#{index+1}. #{customer}"
		end
		puts "The line is currently: " + customer_line.join(' ')
	end
end

def take_a_number(katz_deli, name)
	katz_deli << name
	number_line = katz_deli.find_index(name) + 1
	puts "Welcome, #{name}. You are number #{number_line} in line."
end

def now_serving(katz_deli)
	if katz_deli.length == 0
		puts "There is nobody waiting to be served!"
	else
		new_line = katz_deli.shift
		katz_deli
		puts "Currently serving #{new_line}."
	end
end

