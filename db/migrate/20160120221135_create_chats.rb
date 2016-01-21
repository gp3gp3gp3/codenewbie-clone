class CreateChats < ActiveRecord::Migration
  def change
    create_table :chats do |t|
      t.string :title, null: false
      t.string :description, null: false

      t.timestamps null: false
    end
  end
end
