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
  role: "Quản lí web",
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

image_path = Rails.root.join("app/assets/images/default/img.png")

cat1 = Category.find_or_create_by!(name: "Sofa")
cat2 = Category.find_or_create_by!(name: "Kệ TV")
cat3 = Category.find_or_create_by!(name: "Giường")

prod1 = Product.create!(name: "Bàn ăn gỗ sồi", price: 2500000, category: cat1, description: "Bàn ăn Coastal được làm từ gỗ Ash, theo phong cách truyền thống và mang kết cấu vững chãi. Mặt bàn bằng phẳng với các đường vân tự nhiên, bốn cạnh được bo tròn mềm mại để tránh va chạm trong lúc sử dụng. Sản phẩm có 2 kích thước là 6 chỗ và 8 chỗ cho người dùng những lựa chọn linh hoạt, phù hợp với nhiều không gian và nhu cầu sử dụng.", size: "D1600 - R800 - C755 mm")
prod1.images.attach(
  io: File.open(image_path),
  filename: "img.png",
  content_type: "image/png"
)

prod2 = Product.create!(name: "Ghế sofa vải", price: 3000000, category: cat1, description: "Bàn ăn Coastal được làm từ gỗ Ash, theo phong cách truyền thống và mang kết cấu vững chãi. Mặt bàn bằng phẳng với các đường vân tự nhiên, bốn cạnh được bo tròn mềm mại để tránh va chạm trong lúc sử dụng. Sản phẩm có 2 kích thước là 6 chỗ và 8 chỗ cho người dùng những lựa chọn linh hoạt, phù hợp với nhiều không gian và nhu cầu sử dụng.", size: "D1600 - R800 - C755 mm")
prod2.images.attach(
  io: File.open(image_path),
  filename: "img.png",
  content_type: "image/png"
)

prod3 = Product.create!(name: "Tủ quần áo gỗ công nghiệp", price: 4000000, category: cat2, description: "Bàn ăn Coastal được làm từ gỗ Ash, theo phong cách truyền thống và mang kết cấu vững chãi. Mặt bàn bằng phẳng với các đường vân tự nhiên, bốn cạnh được bo tròn mềm mại để tránh va chạm trong lúc sử dụng. Sản phẩm có 2 kích thước là 6 chỗ và 8 chỗ cho người dùng những lựa chọn linh hoạt, phù hợp với nhiều không gian và nhu cầu sử dụng.", size: "D1600 - R800 - C755 mm")
prod3.images.attach(
  io: File.open(image_path),
  filename: "img.png",
  content_type: "image/png"
)

prod4 = Product.create!(name: "Kệ tivi hiện đại", price: 1500000, category: cat2, description: "Bàn ăn Coastal được làm từ gỗ Ash, theo phong cách truyền thống và mang kết cấu vững chãi. Mặt bàn bằng phẳng với các đường vân tự nhiên, bốn cạnh được bo tròn mềm mại để tránh va chạm trong lúc sử dụng. Sản phẩm có 2 kích thước là 6 chỗ và 8 chỗ cho người dùng những lựa chọn linh hoạt, phù hợp với nhiều không gian và nhu cầu sử dụng.", size: "D1600 - R800 - C755 mm")
prod4.images.attach(
  io: File.open(image_path),
  filename: "img.png",
  content_type: "image/png"
)

prod5 = Product.create!(name: "Giường ngủ gỗ tự nhiên", price: 5000000, category: cat3, description: "Bàn ăn Coastal được làm từ gỗ Ash", size: "D1600 - R800 - C755 mm")
prod5.images.attach(
  io: File.open(image_path),
  filename: "img.png",
  content_type: "image/png"
)

###############################################################################################
image_path = Rails.root.join("app/assets/images/default/img.png")
logo_path = Rails.root.join("app/assets/images/default/logo.png")


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
intro = Introduction.first_or_create!(
  content: 
"Công ty TNHH Thương mại & sản xuất nội thất Mộc Phương là đơn vị chuyên thi công nhà phố, nhà hàng, biệt thự, cửa hàng với đa dạng phong cách thiết kế như hiện đại, tân cổ điển, indochin, japandi, minimalism.
Với trang thiết bị hiện đại  và đội ngũ thợ lành nghề, Mộc Phương cam kết mang đến chất lượng hài lòng cho khách hàng, mỗi sản phẩm hoàn thành đều thể hiện được sự tinh tế phù hợp với không gian của bạn.
Sự tin tưởng và ủng hộ của quý khách hàng trong suốt thời gian qua là nguồn động lực to lớn cho sự nghiệp phát triển của Mộc Phương, chúng tôi cam kết sẽ luôn mang lại sự hài lòng 
",
  link_video: "https://www.youtube.com/embed/Scxs7L0vhZ4")

intro.image.attach(
  io: File.open(image_path),
  filename: "img.png",
  content_type: "image/png"
)


######
Slogan.delete_all
slogan = Slogan.first_or_create!(
  content: "Cam kết chất lượng - hậu mãi tốt nhất"
)

slogan.image.attach(
  io: File.open(logo_path),
  filename: "img.png",
  content_type: "image/png"
)

######
Color.delete_all
Color.first_or_create!(
  background: "#e4e4e4",
  background1:  "#d6d6d6",
  header:     "#FF6A2C",
  footer:     "#1F1F1F",
)

######
DesignOffice.delete_all
DesignOffice.first_or_create!(
  content: "Chúng tôi chuyên cung cấp, tư vấn các giải pháp thiết kế"
)

######
Factory.delete_all
Factory.first_or_create!(
  content: "Xưởng sản xuất nội thất Mộc Phương với diện tích rộng lớn")

######
ProjectInformation.delete_all
projectInformation = [
  "Biệt thự",
  "Nhà phố",
  "Cửa hàng",
  "Nhà hàng",
  "Khách sạn"
]

projectInformation.each do |name|
  projectInfor=ProjectInformation.find_or_create_by!(name: name, content: "Tiếp nối hành trình thiết kế, KTS Mộc Phương đã kiến tạo và phát triển đúng với tinh thần phong cách Industrial theo định hướng của quán.
Từ màu sắc, chất liệu đến từng đường nét đều được chú trọng tạo sự hài hoà và đồng nhất cho toàn bộ tổng thể.
Để tăng tính linh hoạt, chúng tôi đã bố trí phân chia nhiều không gian như khu vực đọc sách, khu vực workshop,… đồng thời chuyển đổi tự nhiên giữa các khu vực một cách hợp lý và độc đáo.
Tạo nên điểm nhấn nghệ thuật tổng thể bằng cách thiết kế không gian trưng bày các sản phẩm âm thanh, loa máy,…
Sử dụng tối đa ánh sáng tự nhiên và xen kẽ những mảng cây xanh mang đến một không gian thoáng đãng và gần gũi.
Inbox hoặc comment ngay Nội thất Mộc Phương nếu bạn có nhu cầu thiết kế quán cafe, nhà hàng nhé!")
  
  projectInfor.image.attach(
  io: File.open(image_path),
  filename: "img.png",
  content_type: "image/png")
end

#####

ProjectInformationInfor.delete_all
projectInforInfor = ProjectInformationInfor.first_or_create!(
  content: "-Phù hợp với khách hàng mục tiêu, thể hiện được cá tính riêng của quán cafe và tạo ấn tượng mạnh mẽ trong tâm trí khách hàng.
  
  - Bố cục không gian cần đảm bảo sự tiện nghi cho khách hàng khi sử dụng, đồng thời tạo sự thông thoáng và thu hút.
  
  - Chất lượng sản phẩm và dịch vụ tốt, đa dạng sẽ giúp thu hút khách hàng và giữ chân khách hàng lâu dài.")

projectInforInfor.image.attach(
  io: File.open(image_path),
  filename: "img.png",
  content_type: "image/png")
  
######
Decoration.delete_all
decoration = [
  "Sàn gỗ công nghiệp",
  "Sàn nhựa terrazzo",
  "Phào chỉ nhựa PU, PS",
  "Tấm ốp (PVC, lam sóng, than tre, nano)",
  "Cửa nhựa composite"
]

decoration.each do |name|
  Decoration.find_or_create_by!(name: name)
end

######
Accessory.delete_all
accessories = [
  "Hafele",
  "Kaff",
  "Garis",
  "Eurogold",
  "Euroking",
  "Grandx"
]
accessories.each do |name|
  Accessory.find_or_create_by!(name: name)
end

######

Promotion.delete_all
promo = Promotion.create!(
  name: "Khuyến mãi tháng 6",
  content: "Giảm ngay 10% cho đơn hàng trên 20 triệu đồng",
  video: "https://www.youtube.com/embed/Scxs7L0vhZ4"
) 

promo.image.attach(
  io: File.open(image_path),
  filename: "img.png",
  content_type: "image/png")
