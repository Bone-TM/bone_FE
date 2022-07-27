class DogFactFacade

    def self.create_dog_fact
        json = DogFactService.get_fact
        json.join("','")
    end
    
end
