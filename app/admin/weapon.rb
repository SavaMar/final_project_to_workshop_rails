ActiveAdmin.register Weapon do

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end

  permit_params :name, :image, :description, weapon_images_attributes: [:id, :image, :_destroy]

  show do
    attributes_table do
      # row :name
      row :description
      weapon.weapon_images.each do |wi|
        row :image do
          image_tag wi.image.url, width: 400
        end
      end
    end
  end

  form do |f|
    f.inputs do
      # f.input :name
      f.input :description
      # f.input :image
      f.has_many :weapon_images do |img|
        img.input :image, hint: img.object.image.url
        img.input :_destroy, as: :boolean
      end
    end
    f.actions
  end


end
