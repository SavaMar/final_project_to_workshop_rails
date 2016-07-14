class Weapon < ActiveRecord::Base
  monetize :price_kopiykas

  has_many :weapon_images
  accepts_nested_attributes_for :weapon_images
  # validates_attachment_content_type :file, content_type: /\Aimage\/.*\Z/


  do_not_validate_attachment_file_type :weapon_images
  # has_attached_file :image,
  #   storage: :dropbox,
  #   dropbox_credentials: Rails.root.join("config/dropbox.yml"),
  #   styles: { medium: "300x300>", thumb: "100x100" }, 
  #   default_url: "missing.png",
  #   dropbox_options: {       
  #     path: proc { |style| "#{style}/#{id}_#{image.original_filename}"}
  #   }
end
