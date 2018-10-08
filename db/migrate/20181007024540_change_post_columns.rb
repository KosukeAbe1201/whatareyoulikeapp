class ChangePostColumns < ActiveRecord::Migration[5.2]
  def change
    remove_column :posts, :incorrect_ans1, :string
    remove_column :posts, :incorrect_ans2, :string
    remove_column :posts, :incorrect_ans3, :string
    remove_column :posts, :correct_ans, :string
    add_column :posts, :answer1, :string
    add_column :posts, :answer2, :string
    add_column :posts, :answer3, :string
    add_column :posts, :answer4, :string
    add_column :posts, :flag, :integer

  end
end
