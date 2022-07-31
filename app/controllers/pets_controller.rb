class PetsController < ApplicationController

  def show
    @user = current_user
    @pet = PetFacade.create_pet(params[:id])
    @picture = DogPictureFacade.create_breed_image(@pet.breed)
  end

  def new
    @user = current_user
    @breeds = DogPictureFacade.create_breeds
  end

end
