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

prod1 = Product.create!(name: "Bàn ăn gỗ sồi", featured: true, material: "Gỗ tự nhiên", price: 2500000, category: cat1, description: "Bàn ăn Coastal được làm từ gỗ Ash, theo phong cách truyền thống và mang kết cấu vững chãi. Mặt bàn bằng phẳng với các đường vân tự nhiên, bốn cạnh được bo tròn mềm mại để tránh va chạm trong lúc sử dụng. Sản phẩm có 2 kích thước là 6 chỗ và 8 chỗ cho người dùng những lựa chọn linh hoạt, phù hợp với nhiều không gian và nhu cầu sử dụng.", size: "D1600 - R800 - C755 mm")
prod1.images.attach(
  io: File.open(image_path),
  filename: "img.png",
  content_type: "image/png"
)
prod1.images.attach(
  io: File.open(image_path),
  filename: "img.png",
  content_type: "image/png"
)
prod1.images.attach(
  io: File.open(image_path),
  filename: "img.png",
  content_type: "image/png"
)
prod1.images.attach(
  io: File.open(image_path),
  filename: "img.png",
  content_type: "image/png"
)
prod1.images.attach(
  io: File.open(image_path),
  filename: "img.png",
  content_type: "image/png"
)

prod2 = Product.create!(name: "Ghế sofa vải", featured: true, price: 3000000, material: "Gỗ tự nhiên", category: cat1, description: "Bàn ăn Coastal được làm từ gỗ Ash, theo phong cách truyền thống và mang kết cấu vững chãi. Mặt bàn bằng phẳng với các đường vân tự nhiên, bốn cạnh được bo tròn mềm mại để tránh va chạm trong lúc sử dụng. Sản phẩm có 2 kích thước là 6 chỗ và 8 chỗ cho người dùng những lựa chọn linh hoạt, phù hợp với nhiều không gian và nhu cầu sử dụng.", size: "D1600 - R800 - C755 mm")
prod2.images.attach(
  io: File.open(image_path),
  filename: "img.png",
  content_type: "image/png"
)
prod2.images.attach(
  io: File.open(image_path),
  filename: "img.png",
  content_type: "image/png"
)
prod2.images.attach(
  io: File.open(image_path),
  filename: "img.png",
  content_type: "image/png"
)
prod2.images.attach(
  io: File.open(image_path),
  filename: "img.png",
  content_type: "image/png"
)
prod2.images.attach(
  io: File.open(image_path),
  filename: "img.png",
  content_type: "image/png"
)
prod2.images.attach(
  io: File.open(image_path),
  filename: "img.png",
  content_type: "image/png"
)

prod3 = Product.create!(name: "Tủ quần áo gỗ công nghiệp", featured: true, price: 4000000, material: "Gỗ tự nhiên", category: cat2, description: "Bàn ăn Coastal được làm từ gỗ Ash, theo phong cách truyền thống và mang kết cấu vững chãi. Mặt bàn bằng phẳng với các đường vân tự nhiên, bốn cạnh được bo tròn mềm mại để tránh va chạm trong lúc sử dụng. Sản phẩm có 2 kích thước là 6 chỗ và 8 chỗ cho người dùng những lựa chọn linh hoạt, phù hợp với nhiều không gian và nhu cầu sử dụng.", size: "D1600 - R800 - C755 mm")
prod3.images.attach(
  io: File.open(image_path),
  filename: "img.png",
  content_type: "image/png"
)
prod3.images.attach(
  io: File.open(image_path),
  filename: "img.png",
  content_type: "image/png"
)
prod3.images.attach(
  io: File.open(image_path),
  filename: "img.png",
  content_type: "image/png"
)
prod3.images.attach(
  io: File.open(image_path),
  filename: "img.png",
  content_type: "image/png"
)
prod3.images.attach(
  io: File.open(image_path),
  filename: "img.png",
  content_type: "image/png"
)
prod3.images.attach(
  io: File.open(image_path),
  filename: "img.png",
  content_type: "image/png"
)

prod4 = Product.create!(name: "Kệ tivi hiện đại", featured: true, price: 1500000, material: "Gỗ tự nhiên", category: cat2, description: "Bàn ăn Coastal được làm từ gỗ Ash, theo phong cách truyền thống và mang kết cấu vững chãi. Mặt bàn bằng phẳng với các đường vân tự nhiên, bốn cạnh được bo tròn mềm mại để tránh va chạm trong lúc sử dụng. Sản phẩm có 2 kích thước là 6 chỗ và 8 chỗ cho người dùng những lựa chọn linh hoạt, phù hợp với nhiều không gian và nhu cầu sử dụng.", size: "D1600 - R800 - C755 mm")
prod4.images.attach(
  io: File.open(image_path),
  filename: "img.png",
  content_type: "image/png"
)
prod4.images.attach(
  io: File.open(image_path),
  filename: "img.png",
  content_type: "image/png"
)
prod4.images.attach(
  io: File.open(image_path),
  filename: "img.png",
  content_type: "image/png"
)
prod4.images.attach(
  io: File.open(image_path),
  filename: "img.png",
  content_type: "image/png"
)
prod4.images.attach(
  io: File.open(image_path),
  filename: "img.png",
  content_type: "image/png"
)
prod4.images.attach(
  io: File.open(image_path),
  filename: "img.png",
  content_type: "image/png"
)

prod5 = Product.create!(name: "Giường ngủ gỗ tự nhiên", featured: true, price: 5000000, material: "Gỗ tự nhiên", category: cat3, description: "Bàn ăn Coastal được làm từ gỗ Ash", size: "D1600 - R800 - C755 mm")
prod5.images.attach(
  io: File.open(image_path),
  filename: "img.png",
  content_type: "image/png"
)
prod5.images.attach(
  io: File.open(image_path),
  filename: "img.png",
  content_type: "image/png"
)
prod5.images.attach(
  io: File.open(image_path),
  filename: "img.png",
  content_type: "image/png"
)
prod5.images.attach(
  io: File.open(image_path),
  filename: "img.png",
  content_type: "image/png"
)
prod5.images.attach(
  io: File.open(image_path),
  filename: "img.png",
  content_type: "image/png"
)
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
contactData = Contact.first_or_create!(
  fb: "https://www.facebook.com/",
  zalo: "0123456789",
  phone: "0123456789",
  gmail: "admin@gmail.com",
  address: "Hồ Chí Minh",
)

contactData.image.attach(
  io: File.open(image_path),
  filename: "img.png",
  content_type: "image/png"
)

#####
Introduction.delete_all
intro = Introduction.first_or_create!(
  content: %(
<p>
  Công ty TNHH Thương mại & sản xuất nội thất Mộc Phương là đơn vị chuyên thi công nhà phố, nhà hàng, biệt thự, cửa hàng với đa dạng phong cách thiết kế như hiện đại, tân cổ điển, indochin, japandi, minimalism.
  
  Với trang thiết bị hiện đại  và đội ngũ thợ lành nghề, Mộc Phương cam kết mang đến chất lượng hài lòng cho khách hàng, mỗi sản phẩm hoàn thành đều thể hiện được sự tinh tế phù hợp với không gian của bạn.
  
  Sự tin tưởng và ủng hộ của quý khách hàng trong suốt thời gian qua là nguồn động lực to lớn cho sự nghiệp phát triển của Mộc Phương, chúng tôi cam kết sẽ luôn mang lại sự hài lòng 
</p>),
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
  background: "#f8f8f8",
  background1:  "#d6d6d6",
  header:     "#FF6A2C",
  footer:     "#1F1F1F",
)

######
DesignOffice.delete_all
designOffice = DesignOffice.first_or_create!(
  content: %(
  <div class="italic">
    <p class="text-2xl font-bold text-gray-700 text-center">
      Văn Phòng Thiết Kế Nội Thất – Mộc Phương Design Office
    </p>
    <p class="text-xl font-bold text-gray-700 mt-2">
      1. Dịch vụ thiết kế
    </p>
    <p>Chúng tôi cung cấp dịch vụ thiết kế trọn gói bao gồm:</p>
    <ul>
      <li>Thiết kế nội thất nhà ở: phòng khách, bếp, phòng ngủ, căn hộ…</li>
      <li>Thiết kế showroom – spa – cửa hàng</li>
      <li>Thiết kế văn phòng – không gian làm việc</li>
      <li>Thiết kế theo phong cách: hiện đại, tối giản, tân cổ điển, luxury…</li>
      <li>Bản vẽ chi tiết & phối cảnh 3D sắc nét</li>
    </ul>

    <p class="text-xl font-bold  text-gray-700 mt-2">
      2. Quy trình làm việc
    </p>

    <ul>
      <li>Tiếp nhận yêu cầu và tư vấn định hướng</li>
      <li>Khảo sát thực tế (nếu cần)</li>
      <li>Lên concept và bố trí mặt bằng</li>
      <li>Thiết kế 3D chi tiết</li>
      <li>Lập bảng vật liệu – báo giá</li>
      <li>Bàn giao hồ sơ thiết kế hoàn chỉnh</li>
    </ul>

    <p class="text-xl font-bold  text-gray-700 mt-2">
      3. Giá trị mang lại
    </p>

    <ul>
      <li>Thiết kế theo đúng nhu cầu & phong cách của khách hàng</li>
      <li>Tối ưu không gian – công năng – chi phí</li>
      <li>Đảm bảo tính thực tế khi đi vào thi công</li>
      <li>Nhiều năm kinh nghiệm trong ngành nội thất</li>
    </ul>
  </div>
))

designOffice.image.attach(
  io: File.open(image_path),
  filename: "img.png",
  content_type: "image/png"
)

######
Factory.delete_all
factoryData = Factory.first_or_create!(
  content: %(
  <div class="italic">
    <p class="text-2xl font-bold text-gray-700 text-center">
      Xưởng Sản Xuất Nội Thất
    </p>
    <p class="text-gray-600 leading-relaxed text-center">
      Chúng tôi sản xuất đồ nội thất theo yêu cầu, chất lượng cao, giá xưởng.
    </p>
    <p class="text-xl font-bold text-gray-700 mt-2">
      1. Giới thiệu về xưởng
    </p>
    <p>
      Xưởng sản xuất Nội Thất Mộc Phương là đơn vị trực tiếp thiết kế – gia công – lắp đặt nội thất theo yêu cầu. Với hơn 10 năm kinh nghiệm, chúng tôi tự tin mang đến những sản phẩm chất lượng, thẩm mỹ cao và bền bỉ theo thời gian.
      Toàn bộ sản phẩm được sản xuất trực tiếp tại xưởng, không qua trung gian nên giá thành luôn tối ưu cho khách hàng.
    </p>

    <p class="text-xl font-bold  text-gray-700 mt-2">
      2. Quy mô & trang thiết bị
    </p>

    <p>
      Chúng tôi sở hữu hệ thống nhà xưởng rộng hơn 1000m², được trang bị đầy đủ máy móc hiện đại:
      Máy cắt CNC công nghệ cao
      Máy dán cạnh tự động
      Máy ép nhiệt – máy khoan – máy phay
      Buồng sơn tĩnh – sơn PU chuyên nghiệp
      Khu vực lắp ráp và hoàn thiện tách biệt
    </p>

    <p class="text-xl font-bold  text-gray-700 mt-2">
      3. Đội ngũ thợ lành nghề
    </p>

    <p>
      Xưởng quy tụ đội ngũ 20+ thợ mộc chuyên nghiệp, nhiều năm kinh nghiệm trong ngành:

      Tỉ mỉ trong từng công đoạn

      Am hiểu kỹ thuật thi công

      Luôn cập nhật xu hướng nội thất mới

      Chúng tôi cam kết mang đến sản phẩm đúng bản vẽ, đúng chất liệu và đúng tiến độ.
    </p>

    <p class="text-xl font-bold  text-gray-700 mt-2">
      4. Sản phẩm xưởng sản xuất
    </p>

    <p>
      Chuyên thi công – sản xuất theo yêu cầu:
      
      Tủ bếp MDF/ HDF/ gỗ tự nhiên
      
      Tủ quần áo, tủ trang trí
      
      Kệ tivi, kệ treo tường
      
      Giường ngủ các loại
      
      Bàn ghế phòng khách
      
      Nội thất văn phòng: bàn – ghế – tủ hồ sơ
      
      Nội thất showroom, cửa hàng, spa
      
      Sản phẩm luôn được kiểm tra kỹ lưỡng trước khi giao đến khách hàng
    </p>

  </div>
))

factoryData.image.attach(
  io: File.open(image_path),
  filename: "img.png",
  content_type: "image/png"
)
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
  
  projectInfor.images.attach(
    io: File.open(image_path),
    filename: "img.png",
    content_type: "image/png")
  
  projectInfor.images.attach(
    io: File.open(image_path),
    filename: "img.png",
    content_type: "image/png"
  )

  projectInfor.images.attach(
    io: File.open(image_path),
    filename: "img.png",
    content_type: "image/png"
  )
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
  decorationData = Decoration.find_or_create_by!(name: name, 
  content: "Đèn Trang Trí Phòng Khách – Modern Elegance

Chiếc đèn trang trí Modern Elegance là điểm nhấn tinh tế cho không gian phòng khách của bạn. Với thiết kế hiện đại, đường nét thanh mảnh và ánh sáng ấm áp, sản phẩm mang đến cảm giác sang trọng và dễ chịu.

Đặc điểm nổi bật:
- Chất liệu: hợp kim cao cấp + thủy tinh trong suốt
- Ánh sáng: ấm áp, không chói mắt
- Kích thước: 60cm x 60cm x 120cm (cao)
- Thiết kế tối giản, phù hợp với nhiều phong cách nội thất
- Dễ dàng lắp đặt và vệ sinh

Công dụng:
- Tạo điểm nhấn sang trọng cho phòng khách hoặc phòng ăn
- Cải thiện ánh sáng tự nhiên và ánh sáng trang trí
- Tôn lên phong cách hiện đại và tinh tế của không gian

Bảo hành & Hướng dẫn:
- Bảo hành: 12 tháng
- Hướng dẫn vệ sinh: lau bằng vải mềm, tránh hóa chất mạnh
- Hướng dẫn lắp đặt đi kèm theo sản phẩm

Liên hệ mua hàng:
Đặt hàng ngay hôm nay để làm mới không gian sống của bạn. Liên hệ Nội Thất Mộc Phương để được tư vấn chi tiết.")

  decorationData.image.attach(
  io: File.open(image_path),
  filename: "img.png",
  content_type: "image/png")
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
  accessoryData = Accessory.find_or_create_by!(name: name, 
  content: "Đèn Trang Trí Phòng Khách – Modern Elegance

Chiếc đèn trang trí Modern Elegance là điểm nhấn tinh tế cho không gian phòng khách của bạn. Với thiết kế hiện đại, đường nét thanh mảnh và ánh sáng ấm áp, sản phẩm mang đến cảm giác sang trọng và dễ chịu.

Đặc điểm nổi bật:
- Chất liệu: hợp kim cao cấp + thủy tinh trong suốt
- Ánh sáng: ấm áp, không chói mắt
- Kích thước: 60cm x 60cm x 120cm (cao)
- Thiết kế tối giản, phù hợp với nhiều phong cách nội thất
- Dễ dàng lắp đặt và vệ sinh

Công dụng:
- Tạo điểm nhấn sang trọng cho phòng khách hoặc phòng ăn
- Cải thiện ánh sáng tự nhiên và ánh sáng trang trí
- Tôn lên phong cách hiện đại và tinh tế của không gian

Bảo hành & Hướng dẫn:
- Bảo hành: 12 tháng
- Hướng dẫn vệ sinh: lau bằng vải mềm, tránh hóa chất mạnh
- Hướng dẫn lắp đặt đi kèm theo sản phẩm

Liên hệ mua hàng:
Đặt hàng ngay hôm nay để làm mới không gian sống của bạn. Liên hệ Nội Thất Mộc Phương để được tư vấn chi tiết.")

  accessoryData.image.attach(
  io: File.open(image_path),
  filename: "img.png",
  content_type: "image/png")
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
