require 'rails_helper'

RSpec.describe 'User Show Page' do

  before :each do
    @user = User.new({attributes: {name: "Jim", email: "isuck@gmail.com", pets:
    [{id:2,
      attributes:
      {
      name:"cat",
      breed:"beagle",
      sex:"male",
      bio:"woof",
      weight:19,
      age:5,
      user_id:1}
    }]}})
    @pet = Pet.new({id: 2, attributes: {name: "jimdog", bio: "Bork", weight: 15, age: 5, sex: "Male", breed: "beagle", user_id: @user.id}})
    allow(PetFacade).to receive(:create_pet).and_return(@pet)
    allow(PetFacade).to receive(:create_pets).and_return([@pet])

    allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(@user)
  end

  it "shows user details" do
    visit users_dashboard_path
    expect(page).to have_content("Welcome Back, Jim!")
    expect(page).to have_link("Add a New Dog")
    expect(page).to have_link("Edit Your Profile")
    expect(page).to have_link("Find Single Dogs")
    expect(page).to have_content("Registered Pets:")
  end

  it "link to registered dog's show page" do
    visit users_dashboard_path
    click_link "View Details"
    expect(current_path).to eq('/pets/2')
  end

  it "links to dog index page" do
    visit users_dashboard_path
    click_link "Find Single Dogs"
    expect(current_path).to eq(pets_path)
  end
end
