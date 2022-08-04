class PetService

  def self.get_pets
    response = connection.get('pets')
    data = JSON.parse(response.body, symbolize_names: true)[:data]
  end

  def self.get_pet(pet_id)
    response = connection.get("pets/#{pet_id}")
    data = JSON.parse(response.body, symbolize_names: true)[:data]
  end

  def self.connection
    Faraday.new(url: 'https://bone-back.herokuapp.com/api/v1/')
  end

  def self.create_pet(id, pet_data)
    connection.post("users/#{id}/pets") do |pet|
      pet.params[:user_id] = pet_data[:user_id]
      pet.params[:name] = pet_data[:name]
      pet.params[:breed] = pet_data[:breed]
      pet.params[:sex] = pet_data[:sex]
      pet.params[:bio] = pet_data[:bio]
      pet.params[:weight] = pet_data[:weight]
      pet.params[:age] = pet_data[:age]
    end
  end
end
