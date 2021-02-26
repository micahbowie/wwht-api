class JokeApiController < ApplicationController


  def show
    @response = HTTParty.get('https://official-joke-api.appspot.com/jokes/programming/random')
    render json: @response.body
  end

end
