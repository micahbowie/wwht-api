class Api::V1::AuthController < ApplicationController

  def login
    @user = User.find_by(username: params[:username])
    if @user && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      # byebug
      render json: @user.serialize, status: :accepted
    else
      render json: {errors:"Invalid username or password", details: @user.errors.full_messages}, status: :unauthorized
    end
  end

  def get_current_user
    if logged_in?
      render json: { user: current_user}, status: :authorized
    else
      render json: {error: "No current user"}
    end
  end

  def logout
    session.clear
    render json: {message: "Sucessfully logged out "}
  end
end
