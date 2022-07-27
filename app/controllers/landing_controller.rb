class LandingController < ApplicationController

  def index
    @fact = DogFactFacade.create_dog_fact
  end


end
