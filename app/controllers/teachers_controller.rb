class TeachersController < ApplicationController
  

  def create
    teacher = Teacher.new(
      name: params[:name],
      email: params[:email],
      password: params[:password],
      password_confirmation: params[:password_confirmation],
    )
    if teacher.save
      render json: { message: "Teacher created successfully" }, status: :created
    else
      render json: { errors: teacher.errors.full_messages }, status: :bad_request
    end
  end

  def index
    @teachers = Teacher.all
    render :index
  end

  def show
    @teacher = Teacher.find_by(id: params[:id])
    render :show
  end

  
end
