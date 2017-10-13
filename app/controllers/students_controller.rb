class StudentsController < ApplicationController
  before_action :set_student, only: [:show, :activate]
  # after_action :set_active, only: :activate

  def index
    @students = Student.all
  end

  def show
  end

  def activate
    set_active
    redirect_to student_path(@student)
  end

  private

  def set_student
    @student = Student.find(params[:id])
  end

  def set_active
    @student.update(active: !@student.active)
  end
end
