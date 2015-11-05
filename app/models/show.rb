class Show < ActiveRecord::Base

  # VALIDATIONS

  validates :title, presence: true
  validates :venue, presence: true
  

  validates :title, uniqueness: true

	has_and_belongs_to_many :users
end
