class StudentsController < ApplicationController
  before_action :set_student, only: :show

  def index
    @students = Student.all
    binding.pry
  end

  def show
  end

  private

    def set_student
      @student = Student.find(params[:id])
    end

    def activate
      @student = Student.find(params[:id])
      @student.activate = !@student.activate
      @student.save
      redirect "students/#{params[:id]}"
    end
end
