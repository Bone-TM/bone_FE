class DogPictureFacade

    def self.create_breeds
        json = DogPictureService.get_breeds
        json.keys.map do |breed|
            breed.to_s
        end
    end

    def self.create_breed_image(breed)
        json = DogPictureService.get_breed_image(breed)
        # binding.pry
    end
end