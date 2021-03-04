class Medium < ApplicationRecord
  belongs_to :project
  belongs_to :key_result
  validates :title, presence: true
end
