class StudentsController < ApplicationController
  before_action :set_student, only: :show
  
  def index
    @students = Student.all
  end

  def show
  end

  def activate
    set_student
    #@student = Student.find(params[:id])
    @student.active = !@student.active
    @student.save
    # redirect_to "/students/#{params[:id]}"
    redirect_to student_path(@student)
  end

  private

    def set_student
      @student = Student.find(params[:id])
    end
end