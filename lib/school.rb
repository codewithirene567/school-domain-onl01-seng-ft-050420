require "pry"
class School
  attr_accessor :name, :roster
  def initialize(name)
    @name = name
    @roster = {}
  end


  def add_student(name, grade)
  @name = name
  @grade = grade
  
  if @roster[grade]
   @roster[grade] << @name
  else
    @roster[grade] = []
    @roster[grade]<< name
  end
  end

def grade(level)
  roster[level]
    #roster.detect do |x, y| 
      #if x == level
        #return y 
        
     # end 
    #end 
  end 
  
  
  def sort
    sorted_list = {}
    roster.each do |grade, name|
     binding.pry
      sorted_list[grade] = name.sort
    end
    sorted_list
  end
    
end


