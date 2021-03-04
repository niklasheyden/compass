class Week < ApplicationRecord
  belongs_to :user
  has_many :week_events, dependent: :destroy
  has_many :week_goals, dependent: :destroy
  has_many :habits, dependent: :destroy
  validates :week_num, presence: true
end
