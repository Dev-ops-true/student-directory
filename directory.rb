puts "The students of Villains Acadamy"
#Lets put all the students in an array
students = [
 "Dr. Hannibal Lecter",
 "Darth Vader",
 "Nurse Ratched",
 "Michael Corleone",
 "Alex DeLarge",
 "The Wicked Witch of the West",
 "Terminator",
 "Freddy Kruger",
 "The Joker",
 "Joffrey Baratheon",
 "Norman Bates"
 ]
 # and then print them
 puts "-----------"
 students.each do |student|
   puts student
 end
# finally, we print the total number of students
print "Overall, we have #{students.count} great students"