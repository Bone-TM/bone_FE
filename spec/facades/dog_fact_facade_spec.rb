require 'rails_helper'

RSpec.describe "Dog Fact Facade" do
    
    it "returns a random dog fact string" do
        fact = DogFactFacade.create_dog_fact

        expect(fact).to be_a String
    end
end