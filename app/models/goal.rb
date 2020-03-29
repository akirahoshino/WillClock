class Goal < ApplicationRecord
    validates :due_time, presence: true
end