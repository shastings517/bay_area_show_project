require 'rails_helper'

describe Show do

  it {is_expected.to respond_to :title}  
  it {is_expected.to respond_to :venue}  
  it {is_expected.to respond_to :image_url}  
  it {is_expected.to respond_to :description}  
  it {is_expected.to respond_to :attendance}  
  it {is_expected.to respond_to :genre}  
  it {is_expected.to respond_to :price}  
  it {is_expected.to respond_to :showdate}  
  it {is_expected.to respond_to :saledate}  
  it {is_expected.to respond_to :latitude}  
  it {is_expected.to respond_to :longitude} 
 
  # Validations

  it {is_expected.to validate_presence_of :title}
  it {is_expected.to validate_presence_of :venue}
  it {is_expected.to validate_presence_of :genre}
  it {is_expected.to validate_presence_of :showdate}

  it {is_expected.to validate_uniqueness_of :title}


# Associations

  it {is_expected.to have_many :users}
  it {is_expected.to have_many :user_shows}
end
