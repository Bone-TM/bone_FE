require "rails_helper"

RSpec.describe "Pet Facade" do

  it "returns an array of pet objects" do
    pets = PetFacade.create_pets

    expect(pets).to be_an Array
    expect(pets.first.name).to be_a String
    expect(pets.last.age).to be_a Integer
  end

  it "returns a single pet object" do
    pet = PetFacade.create_pet(1)
    expect(pet).to be_a Pet
    expect(pet.age).to be_a Integer
    expect(pet.bio).to be_a String
    expect(pet.id).to be_a String
    expect(pet.name).to be_a String
    expect(pet.sex).to be_a String
    expect(pet.weight).to be_a Integer
    expect(pet.user_id).to be_a Integer
  end
end
