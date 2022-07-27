require 'rails_helper'

RSpec.describe "Dog Image API" do

  it "returns list of all dog breeds available" do
    parsed_json = DogPictureService.get_breeds
    
    expect(parsed_json).to be_a Hash
    expect(parsed_json).to include :african, :beagle
  end
end
