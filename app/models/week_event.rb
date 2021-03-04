class WeekEvent < ApplicationRecord
  belongs_to :week
  validates :title, presence: true
  validates :weekday, presence: true
end
