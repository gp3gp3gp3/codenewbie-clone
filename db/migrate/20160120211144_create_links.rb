class CreateLinks < ActiveRecord::Migration
  def change
    create_table :links do |t|
      t.string :title
      t.string :url, null: false
      t.references :linkable, polymorphic: true, index: true

      t.timestamps null: false
    end
  end
end
