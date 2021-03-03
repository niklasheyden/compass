class LifeGoal < ApplicationRecord
  belongs_to :user
  has_many :key_results, dependent: :destroy
  has_many :week_goals, dependent: :destroy
end
