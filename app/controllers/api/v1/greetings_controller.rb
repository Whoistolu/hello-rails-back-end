class Api::V1::GreetingsController < ApplicationController
  def index
    @greeting = Greeting.find(Greeting.pluck(:id).sample) 

    render json: {
      greeting: @greeting
    }.to_json 
  end
  
end
