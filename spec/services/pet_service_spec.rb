require "rails_helper"

RSpec.describe "Pets Service API" do

  it "can retrieve all pets from API" do
    pets = PetService.get_pets
    pet = pets.first

    expect(pets).to be_a Array

    expect(pet[:attributes][:name]).to be_a String
    expect(pet[:attributes][:breed]).to be_a String
    expect(pet[:attributes][:sex]).to be_a String
    expect(pet[:attributes][:bio]).to be_a String
    expect(pet[:attributes][:weight]).to be_a Integer
    expect(pet[:attributes][:age]).to be_a Integer
    expect(pet[:attributes][:user_id]).to be_a Integer
  end

  it "can retrieve one pet from API" do
    pet = PetService.get_pet(1)
    expect(pet).to be_a Hash
    expect(pet[:id]).to eq("1")
    expect(pet[:attributes][:name]).to be_a String
    expect(pet[:attributes][:breed]).to be_a String
    expect(pet[:attributes][:sex]).to be_a String
    expect(pet[:attributes][:bio]).to be_a String
    expect(pet[:attributes][:weight]).to be_a Integer
    expect(pet[:attributes][:age]).to be_a Integer
    expect(pet[:attributes][:user_id]).to be_a Integer
  end

end
