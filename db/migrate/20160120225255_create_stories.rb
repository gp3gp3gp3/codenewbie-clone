class CreateStories < ActiveRecord::Migration
  def change
    create_table :stories do |t|
      t.string :title, null: false
      t.references :postable, polymorphic: true, index: true

      t.timestamps null: false
    end
  end
end
