class TermsController < ApplicationController
  before_action :set_term, only: [:show, :update, :destroy]

  def index
    @terms = Term.all
    render json: @terms
  end

  def search_term
    @terms = Term.search(params[:search])
    if @terms.empty?
      render json: "No terms found"
    else
      render json: @terms
    end
  end

  def show
    render json: @term
  end

  def create
    @term = Term.new(term_params)
    if @term.save
      render json: @term, status: :created, location: @term
    else
      render json: @term.errors, status: :unprocessable_entity
    end
  end

  def update
    if @term.update(term_params)
      render json: @term
    else
      render json: @term.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @term.destroy
  end

  private
    def set_term
      @term = Term.find(params[:id])
    end

    def term_params
      params.require(:term).permit(:name, :list_id, :favorites_id)
    end

end
