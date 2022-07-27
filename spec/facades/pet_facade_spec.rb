require "rails_helper"

RSpec.describe "Pet Facade" do

  it "returns an array of pet objects" do
    pets = PetFacade.create_pets

    expect(pets).to be_an Array
    expect(pets.first.name).to be_a String
    expect(pets.last.age).to be_a Integer
  end
end
