class User
  attr_reader :name, :bio, :email, :location, :id, :pets

  def initialize(user_data)
    @id = user_data[:id]
    @name = user_data[:attributes][:name]
    @bio = user_data[:attributes][:bio]
    @email = user_data[:attributes][:email]
    @location = user_data[:attributes][:location]
    if !user_data[:attributes][:pets].empty?
      @pets = user_pets(user_data)
    end 
  end

  def user_pets(user_data)
    user_data[:attributes][:pets].map do |pet_json|
      Pet.new(pet_json)
    end
  end
end
