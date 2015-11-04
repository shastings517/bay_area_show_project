class User < ActiveRecord::Base

  # Validations

  validates :username, presence: true
  validates :password, presence: true
  validates :email, presence: true
  validates :username, uniqueness: true
  validates :email, uniqueness: true

	acts_as_followable
	acts_as_follower

	 has_and_belongs_to_many :shows

	  def self.from_omniauth(auth)
  where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
    user.provider = auth.provider 
    user.uid      = auth.uid
    user.name     = auth.info.name
    user.save
    if user.nil?
        user = User.create!(:name, :email, :password, :username)

   	  end
end
end
end


