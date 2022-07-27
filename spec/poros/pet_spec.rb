require 'rails_helper'

RSpec.describe Pet do

  it "makes pet objects from JSON response" do
    pet_data = {
      :id=>"1",
      :type=>"pet",
      :attributes=>
        {:name=>"jeeve",
         :breed=>"cocker-spaniel",
         :sex=>"male",
         :bio=>"woof",
         :weight=>19,
         :age=>5,
         :user_id=>1
        }
      }

    pet = Pet.new(pet_data)
    expect(pet).to be_a Pet
    expect(pet.name).to eq(pet_data[:attributes][:name])
    expect(pet.bio).to eq(pet_data[:attributes][:bio])
    expect(pet.sex).to eq(pet_data[:attributes][:sex])
    expect(pet.breed).to eq(pet_data[:attributes][:breed])
    expect(pet.weight).to eq(pet_data[:attributes][:weight])
    expect(pet.id).to eq(pet_data[:id])
    expect(pet.age).to eq(pet_data[:attributes][:age])
    expect(pet.user_id).to eq(pet_data[:attributes][:user_id])
  end

end
