FactoryBot.define do
  factory :tweet do
    body { "MyText" }
    user { nil }
    likes_count { 1 }
    replies_count { 1 }
    retweets_count { 1 }
    reply_to_id { 1 }
    retweet_id { 1 }
    pinned { false }
    visibility { "MyString" }
    tweeted_at { "2025-04-11 06:43:51" }
  end
end
