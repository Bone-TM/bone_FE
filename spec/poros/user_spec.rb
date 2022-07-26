require 'rails_helper'

RSpec.describe User do

  it "makes user objects from JSON response" do
    user_data = {
      :id=>"1",
      :type=>"user",
      :attributes=>
        {
         :name=>"steve",
         :bio=>"dogs r kewl",
         :email=>"steve@beve.com",
         :location=>"denver",
         :pets=>
         [{:attributes=>
           {
           :id=>2,
           :name=>"cat",
           :breed=>"cocker-spaniel",
           :sex=>"male",
           :bio=>"woof",
           :weight=>19,
           :age=>5,
           :user_id=>1}
         }]
        }
      }

    user = User.new(user_data)
    expect(user).to be_a User
    expect(user.name).to eq(user_data[:attributes][:name])
    expect(user.bio).to eq(user_data[:attributes][:bio])
    expect(user.email).to eq(user_data[:attributes][:email])
    expect(user.location).to eq(user_data[:attributes][:location])
    expect(user.id).to eq(user_data[:id])
  end
end
