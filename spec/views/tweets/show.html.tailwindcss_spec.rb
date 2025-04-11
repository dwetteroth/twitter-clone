require 'rails_helper'

RSpec.describe "tweets/show", type: :view do
  let(:user) { User.create!(email: 'test@example.com', password: 'password', username: 'usenrmae') }
  before(:each) do
    assign(:tweet, Tweet.create!(user:user, body:'Test Body'))
  end

  it "renders attributes in <p>" do
    render
  end
end
