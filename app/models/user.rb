class User < ActiveRecord::Base

  has_secure_password
  # Validations

  validates :username, presence: true
  validates :password, presence: true
  validates :email, presence: true
  validates :username, uniqueness: true
  validates :email, uniqueness: true

  acts_as_followable
  acts_as_follower

   has_many :shows, through: :user_shows
   has_many :user_shows, dependent: :destroy


end

