class RemoveImgToWeapon < ActiveRecord::Migration
  def change
    remove_column :weapons, :image
  end
end
