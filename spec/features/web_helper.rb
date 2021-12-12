def sign_up_test_account
  visit("/")
  click_button("Sign up")
  fill_in(:email, with: "test@example.com")
  fill_in(:password, with: "1234")
  fill_in(:name, with: "Test Test")
  fill_in(:username, with: "Test")
  click_button("Sign up")
end

def log_in_test_account
  click_button("Sign in")
  fill_in(:email, with: "test@example.com")
  fill_in(:password, with: "1234")
  click_button("Sign in")
end