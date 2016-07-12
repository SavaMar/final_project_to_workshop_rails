class MonetizeWeapons < ActiveRecord::Migration
  def change
    change_table :weapons do |t|
      t.money :price
    end
  end
end
