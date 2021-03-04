class Note < ApplicationRecord
  belongs_to :project
  belongs_to :key_result
  validates :description, presence: true
end
