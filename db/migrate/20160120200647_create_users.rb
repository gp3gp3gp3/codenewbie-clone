class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :full_name
      t.string :email, null: false
      t.string :twitter_handle
      t.string :avatar_url
      t.string :bio
      t.string :github_username
      t.string :password_digest

      t.timestamps null: false
    end
  end
end
