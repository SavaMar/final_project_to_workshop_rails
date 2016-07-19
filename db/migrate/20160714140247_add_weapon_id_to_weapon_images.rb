class AddWeaponIdToWeaponImages < ActiveRecord::Migration
  def change
    add_column :weapon_images, :weapon_id, :integer
  end
end
