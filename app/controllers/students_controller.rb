class StudentsController < ApplicationController
  before_action :set_student, only: :show

  def index
    @students = Student.all
  end

  def show
  end

  def activate
    @student = Student.find_by(id: params[:id])
    @student.active == false ? @student.active = true : @student.active = false
    @student.save
    redirect_to :action => "show", :id => @student.id
  end

  private

  def set_student
    @student = Student.find(params[:id])
  end


end
