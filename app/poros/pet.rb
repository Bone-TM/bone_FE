class Pet
  attr_reader :id, :name, :breed, :sex, :bio, :weight, :age, :user_id

  def initialize(pet_data)
    @id = pet_data[:id]
    if pet_data[:attributes]
      @name = pet_data[:attributes][:name]
      @breed = pet_data[:attributes][:breed]
      @sex = pet_data[:attributes][:sex]
      @bio = pet_data[:attributes][:bio]
      @weight = pet_data[:attributes][:weight]
      @age = pet_data[:attributes][:age]
      @user_id = pet_data[:attributes][:user_id]
    else 
      @name = pet_data[:name]
      @breed = pet_data[:breed]
      @sex = pet_data[:sex]
      @bio = pet_data[:bio]
      @weight = pet_data[:weight]
      @age = pet_data[:age]
      @user_id = pet_data[:user_id]
    end 
  end
end