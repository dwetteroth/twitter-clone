require 'rails_helper'

RSpec.describe User, type: :model do
  describe "validations" do
    #validate basic user
    it "validate username is present" do
      user = User.new(username: "username", password_digest: "password", email: "something@g.com")
      user.validate
      expect(user).to be_valid
    end

    #invalid password
    it "has an invalid password" do 
      user = User.new(username: "username", password_digest: "1234", email: "something@g.com")
      user.validate
      
      expect(user).to be_invalid
    end


    #valid password
    it "has a valid password" do 
      user = User.new(username: "username", password_digest: "123456", email: "something@g.com")
      user.validate
      expect(user).to be_valid
    end

    #invalid email
    it "has an invalid email" do 
      user = User.new(username: "username", password_digest: "123456", email: "something@g")
      user.validate
      expect(user).to be_invalid
    end

  end
end
