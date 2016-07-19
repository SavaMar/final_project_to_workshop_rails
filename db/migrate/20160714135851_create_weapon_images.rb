class CreateWeaponImages < ActiveRecord::Migration
  def change
    # drop_table :weapon_images
    create_table :weapon_images do |t|

      t.timestamps null: false
    end
  end
end
