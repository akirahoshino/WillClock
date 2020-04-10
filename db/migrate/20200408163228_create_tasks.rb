class CreateTasks < ActiveRecord::Migration[6.0]
  def change
    create_table :tasks do |t|
      t.integer :user_id, null: false
      t.integer :goal_id, null: false
      t.text    :info
      t.integer :status, null: false, default: 0
      t.timestamps
      t.index :user_id  # , unique: true
      t.index :goal_id  # , unique: true
    end
  end
end
