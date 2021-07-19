class StudentsController < ApplicationController

  def index
    students = Student.all

    if params[:name]
      students = Student.all.select {|student|
        student.first_name == params[:name].capitalize || student.last_name == params[:name].capitalize
      }
    end

    render json: students
  end
  # byebug
  def show
    student = Student.find(params[:id])
    render json: student
  end
end


