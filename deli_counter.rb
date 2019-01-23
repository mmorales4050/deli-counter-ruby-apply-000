# Array containing people waiting to be served at deli
katz_deli = []

current_number = 1

# Prints the number of people in line
def line(people_in_line)
  if people_in_line == []
    puts "The line is currently empty."
  else
    counter = 1
    formatted_list_of_people = ""
    people_in_line.each { |person| formatted_list_of_people = formatted_list_of_people + " #{counter}. #{person}"; counter = counter + 1}
    puts "The line is currently:#{formatted_list_of_people}"
  end
end

# Outputs a greeting, the person's number in line, and then adds them to the back of the line
def take_a_number(people_in_line)
  people_in_line << current_number
  puts "Welcome, you are number #{current_number}. You are number #{people_in_line.length} in line."
  current_number = current_number + 1
end

# Outputs who is currently being served and then removes them from the line
def now_serving(people_in_line)
  if people_in_line == []
    puts "There is nobody waiting to be served!"
  else
    puts "Currently serving #{people_in_line.shift}."
  end
end