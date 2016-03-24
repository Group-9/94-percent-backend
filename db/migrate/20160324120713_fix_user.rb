class FixUser < ActiveRecord::Migration
  def change
    change_column :users, :gender, :integer
    change_column :users, :education, :integer
    add_column :users, :employment_status, :integer
  end
end
