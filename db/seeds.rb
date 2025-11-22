user = User.find_by(email: "admin@gmail.com")
user.destroy if user

User.create!(
  name: "admin",
  email: "admin@gmail.com",
  password: "admin12",
  password_confirmation: "admin12",
  role: 1
)

user = User.find_by(email: "user@gmail.com")
user.destroy if user

User.create!(
  name: "user",
  email: "user@gmail.com",
  password: "user12",
  password_confirmation: "user12",
  role: 0
)
