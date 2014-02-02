class Student
  def initialize (name, gender, phone)
    @name = name 
    @gender = gender
    @phone = phone
    @score = 0
    @total = 0
  end  
  
  def display
    puts "Name: #{@name}"
    puts "Gender: #{@gender}"
    puts "Phone: #{@phone}"
    puts "Grade: #{((@score/@total.to_f) * 100).to_i}" 
  end
  
  def exams(score, total)
    @score  += score
    @total += total
  end
         
end

a_students = Student.new("blake" , "male" , "603")
b_students = Student.new("ders" , "male" , "703")
c_students = Student.new("mike" , "male" , "803")
  
a_students.exams(90,100) 
a_students.exams(72,100) 
a_students.exams(83,100) 

a_students.display
    