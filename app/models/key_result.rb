class KeyResult < ApplicationRecord
  belongs_to :life_goal
  has_many :media, dependent: :destroy
  has_many :notes, dependent: :destroy
end
