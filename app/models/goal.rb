class Goal < ApplicationRecord
    validates :due_time, presence: true
    has_many :tasks
    belongs_to :user
    accepts_nested_attributes_for :tasks
end