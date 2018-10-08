class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.string :user_name
      t.string :correct_ans
      t.string :incorrect_ans
      t.string :question
      t.integer :question_num

      t.timestamps
    end
  end
end
