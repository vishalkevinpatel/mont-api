class SessionsTeachersController < ApplicationController
  def create
    teacher = Teacher.find_by(email: params[:email])
    if teacher && teacher.authenticate(params[:password])
      jwt = JWT.encode(
        {
          teacher_id: teacher.id, # the data to encode
          exp: 24.hours.from_now.to_i, # the expiration time
        },
        Rails.application.credentials.fetch(:secret_key_base), # the secret key
        "HS256" # the encryption algorithm
      )
      render json: { jwt: jwt, email: teacher.email, teacher_id: teacher.id }, status: :created
    else
      render json: {}, status: :unauthorized
    end
  end
end
