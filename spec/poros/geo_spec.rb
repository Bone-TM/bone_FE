require 'rails_helper'

RSpec.describe Geo do
  it 'makes location objects from JSON response' do
    geo_data = { ip: '146.168.163.149',
                 type: 'IPv4',
                 location: { latitude: 38.2977, longitude: -76.5324 },
                 area: { code: 'US-MD', geonameid: 4_361_885, name: 'Maryland' },
                 city: { geonameid: 4_350_049, name: 'California', population: 11_857 },
                 status: 'success' }

    geo = Geo.new(geo_data)

    expect(geo).to be_a Geo
    expect(geo.city).to eq(geo_data[:city][:name])
    expect(geo.state).to eq(geo_data[:area][:name])
  end
end
