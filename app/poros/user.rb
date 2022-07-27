class User
  attr_reader :name, :bio, :email, :password_digest, :location, :id

  def initialize(user_data)
    @id = user_data[:id]
    @name = user_data[:attributes][:name]
    @bio = user_data[:attributes][:bio]
    @email = user_data[:attributes][:email]
    @password_digest = user_data[:attributes][:password_digest]
    @location = user_data[:attributes][:location]
  end
end
