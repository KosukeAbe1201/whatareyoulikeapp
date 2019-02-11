class CreateQuestions < ActiveRecord::Migration[5.2]
  def up
    create_table :questions do |t|
      t.text :content
      t.integer :user_id

      t.timestamps
    end
  end

  def down
  end
end
