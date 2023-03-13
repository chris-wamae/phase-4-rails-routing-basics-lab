class StudentsController < ApplicationController
   
    def index
      students_list = Student.all
      render json: students_list
    end
    
    def grades
    sorted_students_list = Student.all.order(grade: :desc)
    render json: sorted_students_list
    end
        
    def highest_grade
    number_one_student = Student.all.order(grade: :desc).first
    render json: number_one_student
    end
end
