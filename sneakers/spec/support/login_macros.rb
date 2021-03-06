module LoginMacros

  def sign_in(user)
    visit root_path
    click_link "Log In"
    fill_in "Username", with: user.username
    fill_in "Password", with: user.password
    click_button "Log In"
  end

  # def sign_out
  #   visit root_path
  #   click_link "Logout"
  # end
end