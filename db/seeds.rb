if Rails.env.development?
  User.create!(email: "collector@example.com", password: "password", password_confirmation: "password")
end
