class AddDatailsToUser < ActiveRecord::Migration
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :age, :integer
    add_column :users, :gender, :boolean
    add_column :users, :country, :string
    add_column :users, :city, :string
  end
end
