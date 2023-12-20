class StudentsController < ApplicationController
  before_action :authenticate_user

  def index
    @students = Student.all
    render :index
  end

  def create
    @student = Student.create(
      name: params[:name],
      teacher: params[:teacher],
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
      teacher: params[:teacher] || @student.teacher,
      user_id: params[:user_id] || @student.user_id,
      image_url: params[:image_url] || @student.image_url,
    )
    render :show
  end

  def destroy
    @student = Student.find_by(id: params[:id])
    @student.destroy
    render json: { message: "its gone" }
  end
end
