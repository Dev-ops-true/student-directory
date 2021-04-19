
 def input_students
  puts "Please enter the names of the students"
  puts "To finish, just hit return twice"
  students = []
  name = gets.chomp
  puts "Which cohort will this student join?"
  cohort = gets.chomp
    if cohort.empty?
     cohort = "unknown"
    end
  while !name.empty? do
    students << {name: name, cohort: cohort}
    puts "Now we have #{students.count} students"
    name = gets.chomp
    puts "Which cohort will this student join?"
    cohort = gets.chomp
    if cohort.empty?
     cohort = "unknown"
    end
  end
 students
 end


 def print(students)
  count = 0
  while count != students.length
   puts "#{students[count][:name]} #{students[count][:cohort]} cohort".center(60)
   count += 1
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