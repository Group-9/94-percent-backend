class FixUser2 < ActiveRecord::Migration
  def change
    remove_column :users, :gender
    add_column :users, :gender, :integer
  end
end
