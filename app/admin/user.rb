ActiveAdmin.register User do

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

  permit_params :first_name, :last_name, :country, :city, :slug
  before_action only: [:show, :edit, :destroy, :update] do
    @user = User.friendly.find(params[:id])
    if @user.save
      full = @user.first_name + @user.last_name
      @user.update_attributes(slug: full.to_s)
    end
  end

  # before_action only: :update do
  #   @user = User.friendly.find(params[:id])
  #   @user.update_attribute(slug: @user.full_name)
  # end

  show do
    attributes_table do
      row :first_name
      row :last_name
      row :city
      row :slug
    end
  end

    index do
      selectable_column
      id_column
      column :first_name
      column :last_name
      column :city
      column :slug
      column :country
      actions
    end

  form do |f|
    f.inputs do 
      f.input :first_name
      f.input :last_name
      f.input :city
      f.input :country, as: :select, collection: country_dropdown
    end

    f.actions
  end
end
