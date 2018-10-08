class AddColumnsToPosts < ActiveRecord::Migration[5.2]
  def change
    add_column :posts, :incorrect_ans1, :string
    add_column :posts, :incorrect_ans2, :string
    add_column :posts, :incorrect_ans3, :string
    remove_column :posts, :incorrect_ans
  end
end
