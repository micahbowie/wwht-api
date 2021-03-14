class DefinitionsController < ApplicationController
  before_action :set_definition, only: [:show, :update, :destroy]

  def index
    @definitions = Definition.all
    render json: @definitions
  end

  def show
    render json: @definition
  end

  def up_vote
    @definition
    @definition.up_vote = definition.up_vote + 1
    @definition.save
    render json: @definition
  end

  def create
    @definition = Definition.new(definition_params)
    if @definition.save
      render json: @definition, status: :created, location: @definition
    else
      render json: @definition.errors, status: :unprocessable_entity
    end
  end

  def update
    if @definition.update(definition_params)
      render json: @definition
    else
      render json: @definition.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @definition.destroy
  end

  private
    def set_definition
      @definition = Definition.find(params[:id])
    end

    def definition_params
      params.require(:definition).permit(:why, :what, :how, :term_id, :up_vote)
    end
end
