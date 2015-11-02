class User < ActiveRecord::Base
	acts_as_followable
	acts_as_follower
	has_many :shows, through: :user_shows
	has_many :user_shows
end
