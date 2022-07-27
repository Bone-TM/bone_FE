class DogPictureService

  def self.get_breeds
    response = connection.get("breeds/list/all")
    data = JSON.parse(response.body, symbolize_names: true)[:message]
  end

  def self.connection
    Faraday.new(url: "https://dog.ceo/api/")
  end

end
