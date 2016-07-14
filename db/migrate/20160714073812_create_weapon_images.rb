class CreateWeaponImages < ActiveRecord::Migration
  def change
    create_table :weapon_images do |t|
      t.attachment :image
      t.integer :weapon_id

      t.timestamps null: false
    end
  end
end
