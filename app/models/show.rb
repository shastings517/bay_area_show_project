class Show < ActiveRecord::Base

  # VALIDATIONS

  validates :title, presence: true
  validates :venue, presence: true
  

  validates :title, uniqueness: true

	# has_and_belongs_to_many :users
  has_many :user_shows
  has_many :users, through: :user_shows


end
