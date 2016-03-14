class RenamePercentage < ActiveRecord::Migration
  def change
    rename_column :answers, :percentage, :percent
  end
end
