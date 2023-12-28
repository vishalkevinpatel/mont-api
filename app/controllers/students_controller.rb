class StudentsController < ApplicationController
  # before_action :authenticate_teacher, only: [:create, :update, :destroy, :index]

  def index
    @students = Student.all
    render :index
  end

  def create
    @student = Student.create(
      name: params[:name],
      teacher_id: params[:teacher_id] || current_teacher.id,
      user_id: params[:user_id],
      image_url: params[:image_url],
    )
    render :show
  end

  def show
    @student = Student.find_by(id: params[:id])
    render :show
  end

  def update
    @student = Student.find_by(id: params[:id])
    @student.update(
      name: params[:name] || @student.name,
      teacher_id: params[:teacher_id] || @student.teacher_id,
      user_id: params[:user_id] || @student.user_id,
      image_url: params[:image_url] || @student.image_url,
    )
    if @student.save
      render :show
    else
      render json: { errors: @student.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def destroy
    @student = Student.find_by(id: params[:id])
    @student.destroy
    render json: { message: "its gone" }
  end
end
