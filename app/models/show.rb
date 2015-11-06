class Show < ActiveRecord::Base

  # VALIDATIONS

  validates :title, presence: true
  validates :venue, presence: true
  

  validates :title, uniqueness: true

  has_many :user_shows, dependent: :destroy
  has_many :users, through: :user_shows


end
