require 'rails_helper'

RSpec.describe 'Landing Page' do

  it "has login, register, and home links" do
    visit root_path
    expect(page).to have_link("Login")
    expect(page).to have_link("Register New User")
    expect(page).to have_link("Home")
  end

  it "has a section for random dog facts" do
    visit root_path
    expect(page).to have_content("Random Dog Fact:")
  end

  it "links to login page" do
    visit root_path
    click_link "Login"
    expect(current_path).to eq(login_path)
  end

  it "links to register page" do
    visit root_path
    click_link "Register New User"
    expect(current_path).to eq(register_path)
  end

end
