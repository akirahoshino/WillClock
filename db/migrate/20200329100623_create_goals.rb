class CreateGoals < ActiveRecord::Migration[6.0]
  def change
    create_table :goals do |t|
      t.text :title
      t.text :info
      t.datetime :due_time
      t.datetime :start_time
      t.integer :priority
      t.integer :status

      t.timestamps
    end
  end
end
