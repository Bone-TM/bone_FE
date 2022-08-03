class PetsController < ApplicationController

  def index
    @user = current_user
    @pets = PetFacade.create_pets
  end
  
  def show
    @user = current_user
    @pet = PetFacade.create_pet(params[:id])
    #  binding.pry
    @pet_user = UserFacade.find_user_by_id(@pet.user_id)
    @picture = DogPictureFacade.create_breed_image(@pet.breed)
  end

  def new
    @user = current_user
    @breeds = DogPictureFacade.create_breeds
  end

  def create
    @user = current_user
    pet_data = {}
    pet_data[:user_id] = params[:user_id]
    pet_data[:name] = params[:name]
    pet_data[:breed] = params[:breed]
    pet_data[:sex] = params[:sex]
    pet_data[:bio] = params[:bio]
    pet_data[:weight] = params[:weight]
    pet_data[:age] = params[:age]
    PetService.create_pet(@user.id, pet_data)
    redirect_to users_dashboard_path
  end
end
