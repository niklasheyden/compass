class Tag < ApplicationRecord
  belongs_to :project
  validates :title, presence: true
  validates :color, presence: true
end
