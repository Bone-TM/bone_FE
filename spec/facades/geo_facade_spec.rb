require 'rails_helper'

RSpec.describe 'Geo Facade' do
  xit 'returns a single geo object' do
    geo = GeoFacade.create_location

    expect(geo.city).to be_a String
    expect(geo.state).to be_a String
  end
end
