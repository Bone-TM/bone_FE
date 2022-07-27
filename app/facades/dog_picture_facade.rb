class DogPictureFacade

    def self.create_breeds
        json = DogPictureService.get_breeds
        json.keys.map do |breed|
            breed.to_s
        end
    end
end