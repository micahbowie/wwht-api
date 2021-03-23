class Api::V1::ListDefinitionsController < ApplicationController
  before_action :set_list_definition, only: %i[ show update destroy ]

  def index
    @list_definitions = ListDefinition.all
  end

  def show
  end

  def create
    @list_definition = ListDefinition.new(list_definition_params)

    if @list_definition.save
      render :show, status: :created, location: @list_definition
    else
      render json: @list_definition.errors, status: :unprocessable_entity
    end
  end


  def update
    if @list_definition.update(list_definition_params)
      render :show, status: :ok, location: @list_definition
    else
      render json: @list_definition.errors, status: :unprocessable_entity
    end
  end


  def destroy
    @list_definition.destroy
  end

  private
    def set_list_definition
      @list_definition = ListDefinition.find(params[:id])
    end

    def list_definition_params
      params.require(:list_definition).permit(:list_id, :definition_id)
    end
end
