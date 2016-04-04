class CreateEntries < ActiveRecord::Migration
        def change
            create_table :entries do |t|
            t.integer :question_id
            t.integer :user_id
            t.string :text
            t.timestamps
        end
    end
end
