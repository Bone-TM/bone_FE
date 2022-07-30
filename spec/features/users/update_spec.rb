require "rails_helper"

RSpec.describe "User Update Page" do
  before :each do
    @user = User.new({attributes: {name: "Jim", email: "isuck@gmail.com"}})
    allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(@user)
  end

  it "can link to a user update page" do
    visit users_dashboard_path
    click_button "Update User Info"
    expect(current_path).to eq("/users/update")
  end

  it "shows user's name and text fields for additional attributes" do
    visit users_update_path
    expect(page).to have_content("Update Jim's Info")
    expect(page).to have_content("Name:")
    expect(page).to have_content("Bio:")
    expect(page).to have_content("Location:")
    expect(page).to have_button("Update User")
  end

end
