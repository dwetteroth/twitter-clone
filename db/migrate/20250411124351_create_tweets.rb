class CreateTweets < ActiveRecord::Migration[8.0]
  def change
    create_table :tweets do |t|
      t.text :body
      t.references :user, null: false, foreign_key: true
      t.integer :likes_count
      t.integer :replies_count
      t.integer :retweets_count
      t.integer :reply_to_id
      t.integer :retweet_id
      t.boolean :pinned
      t.string :visibility
      t.datetime :tweeted_at

      t.timestamps
    end
  end
end
