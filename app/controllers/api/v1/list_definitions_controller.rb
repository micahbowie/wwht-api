class Api::V1::ListDefinitionsController < ApplicationController

  def create
    @list_definition = List.new(list_definitions_params)

    if @list_definition.save
      render json: @list_definition, status: :created, location: @list_definition
    else
      render json: @list_definition.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @list_definition = ListDefinition.find(params[:id])
    @list_definition.destroy
  end

  private
  def list_definitions_params
    params.require(:list_definition).permit(:list_id, :definition_id)
  end
end
