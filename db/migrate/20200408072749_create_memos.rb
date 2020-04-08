class CreateMemos < ActiveRecord::Migration[6.0]
  def change
    create_table :memos do |t|
      t.integer :goal_id
      t.integer :user_id
      t.text :info
      t.integer :status

      t.timestamps
    end
  end
end
