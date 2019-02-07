class AddColumnsToUser2 < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :keyword
    add_column :users, :keyword, :string, default: 0
  end
end
