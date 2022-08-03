require 'rails_helper'

RSpec.describe 'Dog Image API' do
  it 'returns list of all dog breeds available' do
    parsed_json = DogPictureService.get_breeds

    expect(parsed_json).to be_a Hash
    expect(parsed_json).to include :african, :beagle
  end

  it 'returns dog image based on dog breed' do
    parsed_json = DogPictureService.get_breed_image('wolfhound')

    expect(parsed_json).to include('.jpg')
  end
end
