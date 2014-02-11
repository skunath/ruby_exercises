#
# University Manager
#
#
#
#
#


class Student
  @list_of_students = []
  
  def initialize(name, address, phone, social, student_id, gpa = 0.0, credits = 0)
    @name = name
    @address = address
    @phone = phone
    @social = social
    @student_id = student_id
    @gpa = gpa
    @credits = credits.to_i

    @tuition = 0

    Student.enroll(self)
  end
  
  def charge
    puts nil
  end
  
  def self.enroll(student)
    @list_of_students << student
  end
  
  def self.print_list_students()
    for student in @list_of_students
      puts student
    end
  end
  
  def to_s
    "Student: #{@name} - Credits: #{@credits} - Tuition: #{@tuition} - Type: #{self.class}"
  end
  
end


class OffCampus < Student
  
  def initialize(name, address, phone, social, student_id, gpa = 0.0, credits = 0)
    super(name, address, phone, social, student_id, gpa, credits)
    self.tuition_calc()
  end
  
  def tuition_calc
    @tuition = @credits * 520
  end
  
end

class PartTime < Student
  
  def initialize(name, address, phone, social, student_id, gpa = 0.0, credits = 0)
    if !self.credit_check(credits)
      puts "Too many credits for this student"
    end
    super(name, address, phone, social, student_id, gpa, credits)
    self.tuition_calc()
  end
  
  def credit_check(credits)
    return credits.to_i < 12   # < (credits.to_i, 12)
  end
    
  def tuition_calc
    @tuition = @credits * 750
  end
  
end

class FullTime < Student
  
  def initialize(name, address, phone, social, student_id, gpa = 0.0, credits = 0)
    if !self.credit_check(credits)
      puts "Not enough credits for this student"
    end
    super(name, address, phone, social, student_id, gpa, credits)
    self.tuition_calc()
  end
  
  def credit_check(credits)
    return credits.to_i < 12   
  end
  
  def tuition_calc
    @tuition = 8500
    if @credits > 18
      @tuition += 600 * (@credits-18)
    end
  end
  
end

ocampus_test = OffCampus.new("Bill", "123 Test Street", "8036748373", "123-23-7676", "123456", "4.0", "18")
ted = PartTime.new("Ted","1234 Elm Street", "19004531234", "12+3456789", "345212", "3.7", "13")
james = FullTime.new("Red", "1 Infinte Loop", "18004379876", "543251234", "357642", "3.7", "9")

Student.print_list_students()
