class Api::V1::AuthController < ApplicationController
  skip_before_action :authorized, only: [:login]

  def login
    @user = User.find_by(email: params[:email])
    if @user && @user.authenticate(params[:password])
      render json: { user: @user jwt: token }, status: :accepted
    else
      render json: {errors:"Invalid email or password"}, status: :unauthorized
    end
  end

end
