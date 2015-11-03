class Show < ActiveRecord::Base

  # VALIDATIONS

  validates :title, presence: true
  validates :venue, presence: true
  validates :genre, presence: true
  

  validates :title, uniqueness: true

	has_many :users, through: :user_shows
	has_many :user_shows
end
