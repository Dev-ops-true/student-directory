@students = []

def process(selection)
  case selection
    when "1"
      input_students
    when "2"
      show_students
    when "9"
      exit
    else
      puts "I don't know what you meant, try again"
  end
end
def print_menu
  puts "1. Input students"
  puts "2. Show the students"
  puts "9. Exit"
end

def show_students
  print_header
  print_student_list
  print_footer
end

def interactive_menu
   loop do
     print_menu
     process(gets.chomp)
  end
end

 def input_students
  puts "Please enter the names of the student"
  puts "To finish, just hit return twice"
  name = gets.chomp
  puts "Which cohort will this student join?"
  cohort = gets.chomp
  if cohort.empty?
   cohort = "unknown"
  end
  while !name.empty? do
   @students << {name: name, cohort: cohort}
   if @students.count > 1
    puts "Now we have #{@students.count} students"
   else
   puts "Now we have #{@students.count} student"
   end
  name = gets.chomp
  puts "Which cohort will this student join?"
  cohort = gets.chomp

   if cohort.empty?
    cohort = "unknown"
   end
  end
  @students
 end

def print_student_list()
  if @students.empty?
    puts "No students have been registered".center(60)
  else
    @students.each do |student|
    puts "#{student[:name]} #{student[:cohort]} cohort".center(60)
    end
  end
end

 def print_header
  puts "The students of my cohort at Makers".center(60, "-")
  puts "-----------".center(60)
 end

 def print_footer
  puts "Overall, we have #{@students.count} great students".center(60)
 end
interactive_menu
