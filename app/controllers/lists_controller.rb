class ListsController < ApplicationController
  before_action :set_list, only: [:show, :update, :destroy, :list_terms]

  def index
    @lists = List.all

    render json: @lists
  end

  def show
    render json: @list
  end

  def list_terms
    render json: @list.terms
  end

  def create
    @list = List.new(list_params)
    if @list.save
      render json: @list, status: :created, location: @list
    else
      render json: @list.errors, status: :unprocessable_entity
    end
  end

  def update
    if @list.update(list_params)
      render json: @list
    else
      render json: @list.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @list.destroy
  end

  private
    def set_list
      @list = List.find(params[:id])
    end

    def list_params
      params.require(:list).permit(:name, :user_id)
    end
end
