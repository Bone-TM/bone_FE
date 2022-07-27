require 'rails_helper'

RSpec.describe "Dog Image Facade" do

  it "returns an array of dog breeds" do
    breeds = DogPictureFacade.create_breeds
    
    expect(breeds).to be_an Array
    expect(breeds.first).to eq("affenpinscher")
    expect(breeds.last).to eq("wolfhound")
  end

   it "returns a string url based on dog breed" do
    breeds = DogPictureFacade.create_breed_image("wolfhound")
    
    expect(breeds).to be_a String
    expect(breeds).to include(".jpg")
  end
end
