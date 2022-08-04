require "rails_helper"

RSpec.describe "User Update Page" do
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

  it "can link to a user update page" do
    visit users_dashboard_path
    click_link "Edit Your Profile"
    expect(current_path).to eq("/users/edit")
  end

  it "shows user's name and text fields for additional attributes" do
    visit users_edit_path
    expect(page).to have_content("Biography:")
    expect(page).to have_content("Location:")
    expect(page).to have_button("Update User")
  end

  it "can update a users bio and location" do
    visit users_edit_path
    fill_in :bio, with: "hello"
    fill_in :location, with: "Datyon, OH"
    click_on "Update User"
    expect(current_path).to eq(users_dashboard_path)
  end

end
