class AddKarmaIndexToUsers < ActiveRecord::Migration
  def change
    add_column :users, :karma_point, :integer
    add_index :users, :karma_point
  end
end
