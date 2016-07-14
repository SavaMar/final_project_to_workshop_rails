class CreateWeaponImages < ActiveRecord::Migration
  def change
    create_table :weapon_images do |t|

      t.timestamps null: false
    end
  end
end
