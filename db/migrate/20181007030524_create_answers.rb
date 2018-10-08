class CreateAnswers < ActiveRecord::Migration[5.2]
  def change
    create_table :answers do |t|
      t.integer :flag
      t.string :name
      t.integer :correct, default: 0
      t.integer :incorrect, default: 0

      t.timestamps
    end
  end
end
