class AddAnswerToUserId < ActiveRecord::Migration[5.2]
  def change
    add_column :answers, :user_id, :integer, default: 0
  end
end
