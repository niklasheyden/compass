class Project < ApplicationRecord
  belongs_to :user
  has_many :week_goals, dependent: :destroy
  has_many :tasks, dependent: :destroy
  has_many :themes, dependent: :destroy
  has_many :tags, dependent: :destroy
  has_many :notes, dependent: :destroy
  has_many :media, dependent: :destroy
  validates :title, presence: true
end
