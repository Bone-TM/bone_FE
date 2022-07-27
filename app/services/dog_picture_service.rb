class DogPictureService

  def self.connection
    Faraday.new(url: "https://dog.ceo/api/")
  end

  def self.get_breeds
    response = connection.get("breeds/list/all")
    data = JSON.parse(response.body, symbolize_names: true)[:message]
  end

  def self.get_breed_image(breed)
    response = connection.get("breed/#{breed}/images/random")
    data = JSON.parse(response.body, symbolize_names: true)[:message]
  end
end
