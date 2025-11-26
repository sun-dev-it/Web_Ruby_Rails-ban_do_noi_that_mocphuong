# Xóa dữ liệu cũ (theo thứ tự)
OrderItem.delete_all
Order.delete_all
CartItem.delete_all
Product.delete_all
Category.delete_all
User.delete_all

#####
User.create!(
  name: "admin",
  email: "admin@gmail.com",
  password: "admin12",
  password_confirmation: "admin12",
  role: "admin",
)

User.create!(
  name: "test_user1",
  email: "test_user1@gmail.com",
  password: "test_user1",
  password_confirmation: "test_user1",
)

User.create!(
  name: "test_user2",
  email: "test_user2@gmail.com",
  password: "test_user2",
  password_confirmation: "test_user2",
)


cat1 = Category.find_or_create_by!(name: "Sofa")
cat2 = Category.find_or_create_by!(name: "Kệ TV")
cat3 = Category.find_or_create_by!(name: "Giường")

Product.create!(name: "Bàn ăn gỗ sồi", price: 2500000, category: cat1)
Product.create!(name: "Ghế sofa vải", price: 3000000, category: cat1)
Product.create!(name: "Tủ quần áo gỗ công nghiệp", price: 4000000, category: cat2)
Product.create!(name: "Kệ tivi hiện đại", price: 1500000, category: cat2)
Product.create!(name: "Giường ngủ gỗ tự nhiên", price: 5000000, category: cat3)

###############################################################################################
categories = [
  "Sofa",
  "Giường",
  "Tab đầu giường",
  "Tủ áo",
  "Bàn học",
  "Bàn trang điểm",
  "Gương trang trí",
  "Kệ vách ngăn",
  "Kệ TV",
  "Tủ trưng bày",
  "Tủ giày",
  "Ghế thư giãn",
  "Bàn ăn",
  "Chăn, ga, gối, nệm",
  "Tủ nhựa (Đài Loan, Vinco)",
  "Tủ DuyTan"
]

categories.each do |name|
  Category.find_or_create_by!(name: name)
end

#####
Contact.delete_all
Contact.first_or_create!(
  fb: "Link fb",
  zalo: "Số zalo",
  phone: "Số điện thoại",
  address: "Địa chỉ",
)

#####
Introduction.delete_all
Introduction.first_or_create!(
  content: 
"Công ty TNHH Thương mại & sản xuất nội thất Mộc Phương là đơn vị chuyên thi công nhà phố, nhà hàng, biệt thự, cửa hàng với đa dạng phong cách thiết kế như hiện đại, tân cổ điển, indochin, japandi, minimalism.
Với trang thiết bị hiện đại  và đội ngũ thợ lành nghề, Mộc Phương cam kết mang đến chất lượng hài lòng cho khách hàng, mỗi sản phẩm hoàn thành đều thể hiện được sự tinh tế phù hợp với không gian của bạn.
Sự tin tưởng và ủng hộ của quý khách hàng trong suốt thời gian qua là nguồn động lực to lớn cho sự nghiệp phát triển của Mộc Phương, chúng tôi cam kết sẽ luôn mang lại sự hài lòng 
")

######
Slogan.delete_all
Slogan.first_or_create!(
  content: "Cam kết chất lượng - hậu mãi tốt nhất"
)

######
Color.delete_all
Color.first_or_create!(
  background: "#e4e4e4",
  background1:  "#8b8b8b",
  header:     "#FF6A2C",
  footer:     "#1F1F1F",
)