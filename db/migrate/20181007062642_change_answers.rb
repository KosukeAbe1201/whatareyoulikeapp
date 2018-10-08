class ChangeAnswers < ActiveRecord::Migration[5.2]
  def change
    remove_column :answers, :correct
    remove_column :answers, :incorrect
    add_column :answers, :correct, :integer, default: 0
    add_column :answers, :incorrect, :integer, default: 0
  end
end
