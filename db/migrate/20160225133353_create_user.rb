class CreateUser < ActiveRecord::Migration
  def change
  	create_table :users do |t|
            t.integer :age
            t.boolean :gender
            t.string  :education
            t.timestamps
        end
  end
end
