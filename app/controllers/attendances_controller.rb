class AttendancesController < ApplicationController
  before_action :authenticate_admin, except: [:show]

  def index
    @attendances = Attendance.all
    render :index
  end

  def create
    @attendance = Attendance.create(
      student_id: params[:student_id],
      date: params[:date],
      presence: params[:presence],
    )
    render :show
  end

  def show
    @attendance = Attendance.find_by(id: params[:id])
    render :show
  end

  def update
    @attendance = Attendance.find_by(id: params[:id])
    @attendance.update(
      student_id: params[:student_id] || @attendance.student_id,
      date: params[:date] || @attendance.date,
      presence: params[:presence] || @attendance.presence,
    )
    render :show
  end

  def destroy
    @attendance = Attendance.find_by(id: params[:id])
    @attendance.destroy
    render json: { message: "its gone" }
  end
end
