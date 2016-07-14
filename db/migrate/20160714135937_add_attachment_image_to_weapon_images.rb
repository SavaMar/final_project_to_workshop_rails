class AddAttachmentImageToWeaponImages < ActiveRecord::Migration
  def self.up
    change_table :weapon_images do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :weapon_images, :image
  end
end
