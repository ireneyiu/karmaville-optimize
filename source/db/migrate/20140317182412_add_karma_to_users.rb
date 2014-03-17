class AddKarmaToUsers < ActiveRecord::Migration
  def change
    add_column :users, :total_karma_pts, :integer
  end
end
