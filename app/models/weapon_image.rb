class WeaponImage < ActiveRecord::Base
  belongs_to :weapon

  do_not_validate_attachment_file_type :image
  # validates_attachment_content_type :file, content_type: /\Aimage\/.*\Z/

  has_attached_file :image,
    storage: :dropbox,
    dropbox_credentials: Rails.root.join("config/dropbox.yml"),
    styles: { medium: "300x300>", thumb: "100x100" }, 
    default_url: "missing.png",
    dropbox_options: {       
      path: proc { |style| "#{style}/#{id}_#{image.original_filename}"}
    }
end
