class StudentsController < ApplicationController
  before_action :set_student, only: [:show, :activate]
  # https://stackoverflow.com/a/45615785 <- good explanation
  
  def index
    @students = Student.all
  end

  def show
  end

  def activate
    @student.active == false ? @student.update(active: true) : @student.update(active: false)

    redirect_to student_path(@student)
  end

  private

    def set_student
      @student = Student.find(params[:id])
    end
end