class AddDefaultValueToLastSeen < ActiveRecord::Migration
  def change
    add_column :users, :last_seen, :datetime, :default => Time.now
  end
end
