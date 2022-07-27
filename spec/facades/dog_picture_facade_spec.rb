require 'rails_helper'

RSpec.describe "Dog Image Facade" do

  it "returns an array of dog breeds" do
    breeds = DogPictureFacade.create_breeds
    # binding.pry
    expect(breeds).to be_an Array
    expect(breeds.first).to eq("affenpinscher")
    expect(breeds.last).to eq("wolfhound")
  end
end
