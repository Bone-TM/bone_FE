class PetFacade

  def self.create_pets
    pet_data = PetService.get_pets
    pet_data.map do |pet_json|
      Pet.new(pet_json)
    end 
  end

end
