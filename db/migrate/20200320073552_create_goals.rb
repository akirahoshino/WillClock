class CreateGoals < ActiveRecord::Migration[6.0]
  def change
    create_table :goals do |t|
      t.integer   :user_id, null: false #must have value
      t.datetime  :due_time, null: false
      t.datetime  :start_time
      t.string    :title, null: false
      t.text      :info
      t.integer   :priority, null: false, default: 0
      t.integer   :status, null: false, default: 0
      t.timestamps
      t.index :user_id  # , unique: true
    end
  end
end
