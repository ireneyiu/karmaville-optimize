class AddColumnKarmaTotalToUser < ActiveRecord::Migration
  def change
    add_column :users, :karma_total, :integer
  end
end
