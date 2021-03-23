require 'json'
class EverifyController < ApplicationController

  def verify
    base_url = 'https://apilayer.net/api/check?access_key=818436ab9d14e81b509cb0d8185bed93&email='
    email = params[:email]
    @response = HTTParty.get(base_url + email)
    @resp = @response.body
    render json: @resp
  end
end
