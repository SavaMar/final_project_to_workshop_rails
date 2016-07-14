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

  permit_params :name, :description, :price, weapon_images_attributes: [:id, :image]

  index do
    id_column
    column :name
    column :description

    actions
  end

  show do
    attributes_table do
      row :name
      row :description
      row :price do 
        weapon.price.format
      end

      weapon.weapon_images.each do |img|
        row :image do
          image_tag img.image.url(:medium)
        end
      end
    end
  end

  form :html => { :multipart => true } do |f|
    f.inputs do
      f.input :name
      f.input :description
    end
    f.inputs "Images" do
      f.has_many :weapon_images, :allow_destroy => true, :heading => false, :new_record => true do |img_f|
        img_f.input :image, :as => :file, :label => "Image",:hint => img_f.object.image.nil? ? img_f.template.content_tag(:span, "No Image Yet") : img_f.template.image_tag(img_f.object.image.url(:small))
            img_f.input :_destroy, :as=>:boolean, :required => false, :label => 'Remove image'
      end
    end
    f.actions
  end


end
