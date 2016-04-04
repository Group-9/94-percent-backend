class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.integer :level_id
      t.string :text
      t.timestamps
    end
  end
end
