class Api::V1::ListTermsController < ApplicationController

  def create
    @list_term = List.new(list_terms_params)

    if @list_term.save
      render json: @list_term, status: :created, location: @list_term
    else
      render json: @list_term.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @list_term = ListTerm.find(params[:id])
    @list_term.destroy
  end

  private
  def list_terms_params
    params.require(:list_term).permit(:list_id, :term_id)
  end
end
