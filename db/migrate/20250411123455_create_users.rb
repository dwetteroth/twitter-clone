class CreateUsers < ActiveRecord::Migration[8.0]
  def change
    create_table :users do |t|
      t.string :username
      t.string :display_name
      t.string :email
      t.string :password_digest
      t.text :bio
      t.string :location
      t.string :website
      t.string :avatar_url
      t.datetime :confirmed_at
      t.boolean :admin

      t.timestamps
    end
    add_index :users, :username, unique: true
    add_index :users, :email, unique: true
  end
end
