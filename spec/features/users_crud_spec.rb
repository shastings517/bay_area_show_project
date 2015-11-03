require "rails_helper"

feature "create a new user" do
  background do
    visit new_user_path
  end

  scenario "creating a new user with all required fields" do
    within "form" do
      fill_in "username", with: "Mark"
      fill_in "password", with: "secret"
    end
    click_button "Create user"
    expect(page).to have_content "Successfully Created"
    expect(page).to have_content "Mark"
    expect(page.current_path).to eq users_path
  end

  scenario "creating a new user without all required fields" do
    within "form" do
      fill_in "username", with: ""
      fill_in "password", with: ""
    end
    click_button "Create user"
    expect(page).to have_content "First name can't be blank Password can't be blank"
  end
end

feature "update an existing user" do
  let(:user){User.create(username:"Mark",password:"secret")}
  scenario "sucessfully updating" do
    visit edit_user_path(user)
    within "form" do
      fill_in "username", with: "foo"
      fill_in "password", with: "bar"
    end
    click_button "Update user"
    user.reload
    expect(page).to have_content "Updated"
    expect(user.username).to eq "foo"
    expect(user.password).to eq "bar"
  end
end

feature "delete a existing user" do
  scenario "sucessfully deleting" do
    s = User.create(username:"Mark",password:"secret")
    s.shows.create(title: "test show")
    visit users_path
    click_link "Delete this user"
    expect(page).to have_content "Deleted"
    expect(user.all.size).to eq 0
    expect(s.shows.size).to eq 0
  end
end