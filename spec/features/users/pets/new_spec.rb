require 'rails_helper'

RSpec.describe "Pet Creation Page " do
  before :each do
    @user = User.new({attributes: {name: "Jim", email: "isuck@gmail.com", pets:
    [{attributes:
      {
      id:2,
      name:"cat",
      breed:"beagle",
      sex:"male",
      bio:"woof",
      weight:19,
      age:5,
      user_id:1}
    }]}})
    allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(@user)

  end

  it "can link to the create page" do
    visit users_dashboard_path
    click_on "Add a New Dog"

    expect(current_path).to eq("/users/pets/new")
  end

  it "can create a pet" do
    visit users_pets_new_path
    fill_in :name, with: "borkyboi"
    select "boxer", from: :breed
    select "male", from: :sex
    fill_in :bio, with: "bork"
    fill_in :weight, with: 10
    fill_in :age, with: 10
    click_on "Create Pet"
    expect(current_path).to eq(users_dashboard_path)
  end

end
