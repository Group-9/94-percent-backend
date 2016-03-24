class FixUser < ActiveRecord::Migration
  def change
    remove_column :users, :gender
    add_column :users, :gender, :integer
    change_column :users, :education, :integer
    add_column :users, :employment_status, :integer
  end
end
