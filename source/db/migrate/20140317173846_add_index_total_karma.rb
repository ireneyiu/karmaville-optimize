class AddIndexTotalKarma < ActiveRecord::Migration
  def change
    add_index :users, :karma_total
  end
end
