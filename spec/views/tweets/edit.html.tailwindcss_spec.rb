require 'rails_helper'

RSpec.describe "tweets/edit", type: :view do
  let(:user) { User.create!(email: 'test@example.com', password: 'password', username: 'usenrmae') }
  let(:tweet) {Tweet.create!(user: user, body: 'tEST')}

  before(:each) do
    assign(:tweet, tweet)
  end

  it "renders the edit tweet form" do
    render

    assert_select "form[action=?][method=?]", tweet_path(tweet), "post" do
    end
  end
end
