class ChangeAgeGenderCountryCityForUsers < ActiveRecord::Migration
  def change
    change_column_null(:users, :age, true)
    change_column_null(:users, :gender, true)
    change_column_null(:users, :city, true)
    change_column_null(:users, :country, true)
  end
end
