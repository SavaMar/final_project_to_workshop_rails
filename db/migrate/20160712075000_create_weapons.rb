class CreateWeapons < ActiveRecord::Migration
  def change
    create_table :weapons do |t|
      t.attachment :image
      t.text :description
      t.integer :price

      t.timestamps null: false
    end
  end
end
