class CreateSumColumn < ActiveRecord::Migration
  def change
    add_column :users, :totalkarma, :integer
  end
end
