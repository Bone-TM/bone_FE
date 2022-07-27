class DogFactService

    def self.connection
        Faraday.new(url: "https://dog-api.kinduff.com/api/")
    end

    def self.get_fact
        response = connection.get("facts?number=1")
        data = JSON.parse(response.body, symbolize_names: true)[:facts]
    end
end