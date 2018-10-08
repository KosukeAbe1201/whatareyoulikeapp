class AddPostToUserId < ActiveRecord::Migration[5.2]
  def change
    add_column :posts, :user_id, :integer
    remove_column :posts, :user_name
  end
end
