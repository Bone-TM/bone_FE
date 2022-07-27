require 'rails_helper'

RSpec.describe "Dog Fact API" do
    it "gives a random dog fact" do
        parsed_json = DogFactService.get_fact
        
    end
end