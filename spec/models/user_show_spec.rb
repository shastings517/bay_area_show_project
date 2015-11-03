require 'rails_helper'

describe UserShow do 

  it {is_expected.to belong_to :users}
  it {is_expected.to belong_to :shows}

end
