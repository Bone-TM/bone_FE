class PetService

  def self.get_pets
    response = connection.get('pets')
    data = JSON.parse(response.body, symbolize_names: true)[:data]
  end

  def self.connection
    Faraday.new(url: 'https://bone-back.herokuapp.com/api/v1/')
  end

end
