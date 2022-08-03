class PetFacade

  def self.create_pets
    pet_data = PetService.get_pets
    pet_data.map do |pet_json|
      Pet.new(pet_json)
    end
  end

  def self.create_pet(id)
    pet_data = PetService.get_pet(id)
    Pet.new(pet_data)
  end
end
