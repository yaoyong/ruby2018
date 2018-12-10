
  
#1.Write a method call array_uppercase. It accepts an non empty array as parameter
#Input: array contains string elements
#Output: All the characters of array elements should be upcase.
#Example: input ["hello", "world"] , output ["HELLO", "WORLD"]
 

def array_uppercase(array)
	array.map(&:upcase)
end
 puts array_uppercase(["hello", "world"])

# #2.Write a method call sum, it accepts an non empty array contains all integer elements.
# #Input: non empty array contains all integer
# #Output: The sum of all elements of the array
# #Example: input [1,2,3,4,5,6], output 21

def sum(array)
    array.inject(0) { |sum, x| sum + x }
end
puts sum([1,2,3,4,5,6])

# #3.Write a class called Student
# #a)its instance has four age: name, age, program, major, These age are read only from outside.
# #b)The constructor is the only place we can set name, age, program and major.
# #c)Write a display method to display the information of the student in the format "#{name}-#{age}-#{program}-#{major}"

 
class Student
  attr_accessor :name, :age, :program, :major
 	def initialize(name, age, program, major) 
        @name = name
        @age = age
        @program = program
        @major = major
  end 

	def display  
		puts "#{@name}-#{@age}-#{@program}-#{@major}"
  	end
end

onestudent = Student.new("namejan",45,"progit","majorcom")
onestudent.display


# #4.Write a method call sort_students

def sort_students(student_array,age)
  student_array.sort! { |a, b|  a.age <=> b.age }
  student_array.each { |p| puts p.age }
end

onestudent1 = Student.new("namejan1",1,"progit1","majorcom1")
onestudent2 = Student.new("namejan2",2,"progit2","majorcom2")
onestudent3 = Student.new("namejan3",3,"progit3","majorcom3")
onestudent4 = Student.new("namejan4",4,"progit4","majorcom4")
student_arr = [onestudent1,onestudent3,onestudent2,onestudent4]
sort_students(student_arr,age)
