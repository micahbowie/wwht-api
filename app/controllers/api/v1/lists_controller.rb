class Api::V1::ListsController < ApplicationController
  before_action :set_list, only: [:show, :update, :destroy, :list_terms]

  def list_definitions
    render json: @list.definitions
  end

  def create
    @list = List.new(list_params)
    if @list.save
      render json: @list, status: :created, location: api_v1_url(@list)
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
