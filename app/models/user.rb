class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validates :first_name, presence: true
  has_many :weeks, dependent: :destroy
  has_many :projects, dependent: :destroy
  has_many :life_goals, dependent: :destroy
end
