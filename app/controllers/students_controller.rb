class StudentsController < ApplicationController
  before_action :set_student, only: :show

  def index
    @students = Student.all
  end

  def show
  end

  def update
    set_student.toggle_active
    redirect_to action: "show", id: set_student.id
  end

  private

    def set_student
      @student = Student.find(params[:id])
    end
end
