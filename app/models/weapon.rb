class Weapon < ActiveRecord::Base

  has_many :weapon_images
  accepts_nested_attributes_for :weapon_images, allow_destroy: true


  monetize :price_kopiykas

  do_not_validate_attachment_file_type :image
  has_attached_file :image,
    storage: :dropbox,
    dropbox_credentials: Rails.root.join("config/dropbox.yml"),
    styles: { medium: "300x300>", thumb: "100x100" },
    default_url: "missing.png",
    dropbox_options: {
      path: proc { |style| "#{style}/#{id}_#{image.original_filename}"}
    }
end
