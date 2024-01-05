class MessagesController < ApplicationController
  before_action :authenticate, except: [:show]

  def index
    @messages = Message.all
    render :index
  end

  def create
    @message = Message.create(
      student_id: params[:student_id],
      text: params[:text],
      teacher_id: params[:teacher_id] || current_teacher.id,
      user_id: params[:user_id] || current_user.id,
    )
    render :show
  end

  def show
    @message = Message.find_by(id: params[:id])
    render :show
  end

  def update
    @message = Message.find_by(id: params[:id])
    @message.update(
      student_id: params[:student_id] || @message.student_id,
      text: params[:text] || @message.text,
      teacher_id: params[:teacher_id] || @message.teacher_id,
      user_id: params[:user_id] || @message.user_id,
    )
    if @message.save
      render :show
    else
      render json: { errors: @message.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def destroy
    @message = Message.find_by(id: params[:id])
    @message.destroy
    render json: { message: "its gone" }
  end
end
