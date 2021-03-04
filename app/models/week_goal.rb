class WeekGoal < ApplicationRecord
  belongs_to :week
  belongs_to :project
  belongs_to :life_goal
  validates :title, presence: true
  validates :priority, presence: true
end
