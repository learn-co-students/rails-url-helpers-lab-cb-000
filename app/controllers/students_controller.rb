class StudentsController < ApplicationController
  before_action :set_student, only: [:show]

  def index
    @students = Student.all
  end

  def show
    if @student.active == true
      @status_string = "This student is currently active."
    else
      @status_string = "This student is currently inactive."
    end
  end

  def activate
    @student = Student.find(params[:id])
    if @student.active == true
      @student.update(active: false)
    else
      @student.update(active: true)
    end
    redirect_to action: :show
  end



  private

    def set_student
      @student = Student.find(params[:id])
    end
end
