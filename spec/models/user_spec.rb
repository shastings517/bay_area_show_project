require 'rails_helper'

describe User do

  it {is_expected.to respond_to :username}  
  it {is_expected.to respond_to :password}  
  it {is_expected.to respond_to :email}  
  it {is_expected.to respond_to :image_url}  
  it {is_expected.to respond_to :age}  
  it {is_expected.to respond_to :sex}  
  it {is_expected.to respond_to :provider}  
  it {is_expected.to respond_to :uid}  
  it {is_expected.to respond_to :name}  
  it {is_expected.to respond_to :oauth_token}  
  it {is_expected.to respond_to :oauth_expires_at} 

  # Validations

  it {is_expected.to validate_presence_of :username}
  it {is_expected.to validate_presence_of :password}
  it {is_expected.to validate_presence_of :email}

  it {is_expected.to validate_uniqueness_of :username}
  it {is_expected.to validate_uniqueness_of :email}


# Associations

  it {is_expected.to have_many :shows}
  it {is_expected.to have_many :follows}
  it {is_expected.to have_many :followings}
  it {is_expected.to have_many :user_shows}
end


