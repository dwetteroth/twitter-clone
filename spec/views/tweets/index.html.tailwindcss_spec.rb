require 'rails_helper'

RSpec.describe "tweets/index", type: :view do
  let(:user) { User.create!(email: 'test@example.com', password: 'password', username: 'usenrmae') }
  before(:each) do
    assign(:tweets, [
      Tweet.create!(user:user, body: 'TESt Body'),
      Tweet.create!(user:user, body: 'TESt Body')
    ])
  end

  it "renders a list of tweets" do
    render
    cell_selector = 'div>p'
  end
end
