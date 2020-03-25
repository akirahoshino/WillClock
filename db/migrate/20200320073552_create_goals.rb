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

# t.timestamps will make "created at" n "updated at"
#  -> don't want to erase this (line 11)
# :id -> no need
# title could be short enough of 'string'
# done 0 1 might not be enough -> 'status' is better for future update
# include t.index search quicker -> line 12
#  -> this time :user_id would be the criteria
# unique: true -> makes just one record for each user_id
#  -> in this case multiple records are OK for each user_id
# null: false, default: ~ -> when recording column should have value, 
#  -> otherwise, put the default value ~
# 