require 'rails_helper'

RSpec.describe "Pet Show Page" do
  before :each do
    @user = User.new({id: 1, attributes: {name: "Jim", email: "isuck@gmail.com"}})
    @pet = Pet.new({id: 2, attributes: {name: "jimdog", bio: "Bork", weight: 15, age: 5, sex: "Male", breed: "beagle", user_id: @user.id}})
    allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(@user)
    allow(PetFacade).to receive(:create_pet).and_return(@pet)
  end

  it "shows details about specific pet" do
    visit "/pets/#{@pet.id}"
    expect(page).to have_content("Biography: Bork")
    expect(page).to have_content("Weight: 15")
    expect(page).to have_content("Age: 5")
    expect(page).to have_content("Gender: Male")
    expect(page).to have_content("Breed: beagle")
  end

end
