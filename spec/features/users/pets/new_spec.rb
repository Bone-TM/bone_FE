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
    click_link "Add a New Dog"

    expect(current_path).to eq("/users/pets/new")
    expect(page).to have_content("Add a Dog to Jim's Family")
  end

end
