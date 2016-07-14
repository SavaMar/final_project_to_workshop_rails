class AddNameToWeapons < ActiveRecord::Migration
  def change
    add_column :weapons, :name, :string
  end
end
