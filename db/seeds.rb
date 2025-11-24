user = User.find_by(email: "admin@gmail.com")
user.destroy if user

User.create!(
  name: "admin",
  email: "admin@gmail.com",
  password: "admin12",
  password_confirmation: "admin12",
  role: "admin",
)

user = User.find_by(email: "test_user1@gmail.com")
user.destroy if user
User.create!(
  name: "test_user1",
  email: "test_user1@gmail.com",
  password: "test_user1",
  password_confirmation: "test_user1",
)

user = User.find_by(email: "test_user2@gmail.com")
user.destroy if user
User.create!(
  name: "test_user2",
  email: "test_user2@gmail.com",
  password: "test_user2",
  password_confirmation: "test_user2",
)


Product.destroy_all
Category.destroy_all

cat1 = Category.create!(name: "Bàn ghế")
cat2 = Category.create!(name: "Tủ kệ")
cat3 = Category.create!(name: "Giường ngủ")

Product.create!(name: "Bàn ăn gỗ sồi", price: 2500000, category: cat1)
Product.create!(name: "Ghế sofa vải", price: 3000000, category: cat1)
Product.create!(name: "Tủ quần áo gỗ công nghiệp", price: 4000000, category: cat2)
Product.create!(name: "Kệ tivi hiện đại", price: 1500000, category: cat2)
Product.create!(name: "Giường ngủ gỗ tự nhiên", price: 5000000, category: cat3)
