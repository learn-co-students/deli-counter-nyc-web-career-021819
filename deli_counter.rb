# Write your code here.

# katz_deli = []

def line(queue)
    
    queue_of_names = "The line is currently:"

    if queue.size == 0
        puts "The line is currently empty."
    else
        for name in queue do
            queue_of_names += " " + (queue.index(name)+1).to_s + ". " + name
        end
        puts queue_of_names
    end
end

def take_a_number(queue, name)
    queue.push(name)
    puts "Welcome, #{name}. You are number " + (queue.index(name)+1).to_s + " in line."
end

def now_serving(queue)
    if queue.size == 0
        puts "There is nobody waiting to be served!"
    else
        puts "Currently serving " + queue[0] + "."
        queue.shift
    end
end
