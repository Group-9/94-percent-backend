class CreateAnswers < ActiveRecord::Migration
  def change
	create_table :answers do |t|
	  t.integer :percentage
      t.integer :question_id
      t.string :text
      t.timestamps
  	end
  end
end
