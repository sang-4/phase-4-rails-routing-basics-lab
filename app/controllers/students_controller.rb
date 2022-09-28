class StudentsController < ApplicationController
    def index
        students = Student.all
        render json: students
    end

    #return a list of all students ordered by grade from lowest to highest
    def grades
        students_ordered_by_grade = Student.order(grade: :desc)
        render json: students_ordered_by_grade
    end

end