class Api::V1::UsersController < ApplicationController
  before_action :set_user, only: [:show, :update, :destroy]
  # skip_before_action :authorized, only: [:create]

  def index
    @users = User.all
    render json: @users
  end

  def show
    render json: @user
  end

# Create action for JWT
  # def create
  #   @user = User.create(user_params)
  #   if @user.valid?
  #     @token = encode_token(user_id: @user.id)
  #     render json:{user: @user, jwt: @token}, status: :created
  #   else
  #     render json: { error: "Failed to create new user"}, status: :not_acceptable
  #   end
  # end

  def create
    @user = User.new(user_params)
    @user.password = params[:password]
    if @user.save
      render json: @user, status: :created, location: api_v1_url(@user)
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  def update
    if @user.update(user_params)
      render json: @user
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  def login
    @user = User.find_by(email: params[:email])
    if @user && @user.authenticate(params[:password])
      render json: { id: @user.id, name: @user.name, email: @user.email, lists: @user.lists, isLoggedIn: true, errors: @user.errors }
    else
      render json: {errors: @user.errors, isLoggedIn: false}
    end
  end

  def destroy
    @user.destroy
  end

  private
    def set_user
      @user = User.find(params[:id])
    end

    def user_params
      params.require(:user).permit(:username, :email, :first_name, :last_name, :twitter)
    end
end
