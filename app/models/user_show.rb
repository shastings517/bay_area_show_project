class UserShow < ActiveRecord::Base
  belongs_to :User
  belongs_to :show
end
