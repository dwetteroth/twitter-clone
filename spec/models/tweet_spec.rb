require 'rails_helper'

RSpec.describe Tweet, type: :model do
  describe "validations" do
    #Valid tweet - basic
    it "is valid with a user and a body under 280 chars" do 
      
      user = User.create!(username: "test", email: "test@example.com", password: "12345678")

      tweet = Tweet.new(user: user, body: "This is a valid tweet.")
      expect(tweet).to be_valid
    end

    #invalid tweet
    it "is invalid without a body" do 
      tweet = Tweet.new(body: nil)
      tweet.validate
      expect(tweet.errors[:body]).to include("can't be blank")
    end

    #body length validation
    it "is invalid if body exceeds 280 chars" do 
      tweet = Tweet.new(body: "a"*281)
      tweet.validate
      expect(tweet.errors[:body]).to include("is too long (maximum is 280 characters)")
    end

  end

  context '' do
    
  end
end
