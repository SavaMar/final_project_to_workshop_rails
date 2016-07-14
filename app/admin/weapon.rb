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

  permit_params :name, :image, :description

  show do
    attributes_table do
      row :name
      row :description
      row :image do
        image_tag(venue.image.url)
      end
    end
  end

  form do |f|
    f.inputs do
      f.input :name
      f.input :description
      f.input :image
    end
    f.actions
  end


end
