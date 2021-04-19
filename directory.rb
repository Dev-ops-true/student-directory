
 def input_students
  puts "Please enter the names of the student"
  puts "To finish, just hit return twice"
  students = []
  name = String.new(gets).strip
  puts "Which cohort will this student join?"
  cohort = String.new(gets).strip
  if cohort.empty?
   cohort = "unknown"
  end
  while !name.empty? do
   students << {name: name, cohort: cohort}
   if students.count > 1
    puts "Now we have #{students.count} students"
   else
   puts "Now we have #{students.count} student"
   end
  name = String.new(gets).strip
  puts "Which cohort will this student join?"
  cohort = String.new(gets).strip

   if cohort.empty?
    cohort = "unknown"
   end
  end
  students
 end


 def print(students)
  students.each_with_index do |student, index|
   puts "#{index}.#{student[:name]} #{student[:cohort]} cohort".center(60)
  end
 end

 def print_header
  puts "The students of my cohort at Makers".center(60, "-")
  puts "-----------".center(60)
 end

 def print_footer(students)
  puts "Overall, we have #{students.count} great students".center(60)
 end
students = input_students
print_header
print(students)
print_footer(students)