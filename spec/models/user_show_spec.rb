require 'rails_helper'

describe UserShow do 
  it {is_expected.to belong_to :user}
  it {is_expected.to belong_to :show}
end
