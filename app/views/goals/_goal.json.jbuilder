json.extract! goal, :id, :title, :info, :due_time, :start_time, :priority, :status, :created_at, :updated_at
json.url goal_url(goal, format: :json)
