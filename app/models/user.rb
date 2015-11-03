class User < ActiveRecord::Base

  # Validations

  validates :username, presence: true
  validates :password, presence: true
  validates :email, presence: true
  validates :username, uniqueness: true
  validates :email, uniqueness: true

	acts_as_followable
	acts_as_follower
	has_many :shows, through: :user_shows
	has_many :user_shows

	  def self.from_omniauth(auth)
  where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
    user.provider = auth.provider 
    user.uid      = auth.uid
    user.name     = auth.info.name
    user.save
   	  end
      end



end
