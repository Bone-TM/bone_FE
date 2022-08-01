require 'rails_helper'

RSpec.describe "Pets Index Page" do
  before :each do
    @user = User.new({id: 1, attributes: {name: "Jim", email: "isuck@gmail.com"}})
    @pet1 = Pet.new({id: 2, attributes: {name: "jimdog", bio: "Bork", weight: 15, age: 5, sex: "Male", breed: "beagle", user_id: @user.id}})
    @pet2 = Pet.new({id: 3, attributes: {name: "sabadog", bio: "Bork", weight: 25, age: 5, sex: "Male", breed: "chihuahua", user_id: @user.id}})
    @pet3 = Pet.new({id: 4, attributes: {name: "nickdog", bio: "Bork", weight: 10, age: 5, sex: "Male", breed: "pug", user_id: @user.id}})

    allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(@user)
    allow(PetFacade).to receive(:create_pets).and_return([@pet1, @pet2, @pet3])
    allow(PetFacade).to receive(:create_pet).and_return(@pet2)
  end

  it "shows all registered dogs" do
    visit pets_path
    expect(page).to have_content("All Pets")
    expect(page).to have_link("sabadog")
    expect(page).to have_link("jimdog")
    expect(page).to have_link("nickdog")
  end

  it "links to specific dogs show page" do
    visit pets_path
    click_on("sabadog")
    expect(current_path).to eq("/pets/#{@pet2.id}")
  end


end
