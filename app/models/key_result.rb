class KeyResult < ApplicationRecord
  belongs_to :life_goal
  has_many :media, dependent: :destroy
  has_many :notes, dependent: :destroy
  validates :title, presence: true
  validates :target_num, presence: true
end
