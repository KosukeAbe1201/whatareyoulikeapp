class AddQuestionNumToAnswer < ActiveRecord::Migration[5.2]
  def change
    add_column :answers, :question_num, :integer
  end
end
