require 'rails_helper'

RSpec.describe 'Landing Page' do

  it "has login, register, and home links" do
    visit root_path
    expect(page).to have_link("Login")
  end

  it "has a section for random dog facts" do
    visit root_path
    expect(page).to have_content("Random Dog Fact:")
  end

  it "can logout and destroy session" do
    @user = User.new({ attributes: { name: 'Jim', email: 'isuck@gmail.com'}})
    allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(@user)
    visit root_path
    click_link("Logout")
    expect(current_path).to eq(root_path)
  end
 end
