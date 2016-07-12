class ChangeAgainGenderForUsers < ActiveRecord::Migration
  def self.up
    add_column :users, :gender_cd, :integer
  end

  def self.down
    remove_column :users, :gender
  end
end
