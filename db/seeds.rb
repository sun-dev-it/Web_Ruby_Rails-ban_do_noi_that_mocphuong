# Xóa ảnh của Slogan
Slogan.all.each do |slogan|
  slogan.image.purge if slogan.image.attached?
end

Showroom.all.each do |decoration|
  decoration.images.each do |img|
    img.purge
  end
end

# Xóa ảnh của Decoration
Decoration.all.each do |decoration|
  decoration.images.each do |img|
    img.purge
  end
end

# Xóa ảnh của Product
Product.all.each do |product|
  product.images.each do |img|
    img.purge
  end
end

# Xóa ảnh của Contact
Contact.all.each do |contact|
  contact.image.purge if contact.image.attached?
end

# Xóa ảnh của Introduction
Introduction.all.each do |intr|
  intr.images.each do |img|
    img.purge
  end
end

# Xóa ảnh của DesignOffice
DesignOffice.all.each do |office|
  office.image.purge if office.image.attached?
end

# Xóa ảnh của Factory
Factory.all.each do |factory|
  factory.image.purge if factory.image.attached?
end

# Xóa ảnh của ProjectInformation
ProjectInformation.all.each do |proj|
  proj.images.each do |img|
    img.purge
  end
end

# Xóa ảnh của ProjectInformationInfor
ProjectInformationInfor.all.each do |proj_info|
  proj_info.images.each do |img|
    img.purge
  end
end

Accessory.all.each do |proj_info|
  proj_info.images.each do |img|
    img.purge
  end
end

##########################################################################

email = "daiphatle123@gmail.com"
if (user = User.find_by(email: email))
  user.destroy
end
User.create!(email: email, role: "super_admin")

email = "nguyenducphong18012002@gmail.com"
if (user = User.find_by(email: email))
  user.destroy
end
User.create!(email: email, role: "super_admin")

##########################################################################
listCatalog = [
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
  "Bàn trang điểm",
	"Bàn học",
	"Bhế thư giãn",
	"Bàn ăn",
	"Chăn, ga, gối, nệm",
	"Tủ nhựa ( đài loan, vinco)",
	"Tủ DuyTan"
]

listCatalog.each do |i|
  unless Category.exists?(name: i)
    Category.create!(name: i)
  end
end

##########################################################################

listDecoration = [
  "Sàn gỗ công nghiệp",
  "Sàn nhựa terrazzo",
  "Phào chỉ nhựa PU, PS",
  "Tấm ốp (PVC, lam sóng, than tre, nano)",
  "Cửa nhựa composite"
]

listDecoration.each do |i|
  unless Decoration.exists?(name: i)
    Decoration.create!(name: i)
  end
end

##########################################################################

listProjectInformation = [
  "Biệt thự",
  "Nhà phố",
  "Cửa hàng",
  "Nhà hàng",
  "Khách sạn"
]

listProjectInformation.each do |i|
  unless ProjectInformation.exists?(name: i)
    ProjectInformation.create!(name: i)
  end
end

##########################################################################

listAccessory = [
  "Hafele",
  "Kaff",
  "Garis",
  "Eurogold",
  "Euroking",
  "Grandx"

]

listAccessory.each do |i|
  unless Accessory.exists?(name: i)
    Accessory.create!(name: i)
  end
end

##########################################################################

Slogan.delete_all
slogan = Slogan.first_or_create!(
  content: "Cam kết chất lượng - hậu mãi tốt nhất"
)

##########################################################################

Contact.delete_all
contactData = Contact.first || Contact.create!(
  fb: "https://www.facebook.com/phong5335/",
  zalo: "0868966404",
  phone: "0868966404",
  gmail: "nguyenducphong18012002@gmail.com",
  address: "Ho Chi Minh City"
)

##########################################################################

colorData = Color.first || Color.create!(
  background: "#F3F4F6",
  background1: "#FF5733",
  header: "#FF5733",
  footer: "#222222"
)

##########################################################################

projectInforInfor = ProjectInformationInfor.first
projectInforInfor = ProjectInformationInfor.first || ProjectInformationInfor.create!(
  content: "Mỗi dự án là sự kết hợp hài hòa giữa ý tưởng sáng tạo, chất lượng thi công và sự tận tâm trong từng chi tiết. Mộc Phương tự hào đồng hành cùng khách hàng để kiến tạo những không gian sống và làm việc hiện đại, tiện nghi, đáp ứng cả về công năng lẫn tính thẩm mỹ.

Danh mục dự án của chúng tôi bao gồm nhà phố, căn hộ, biệt thự, văn phòng, showroom, cửa hàng và nhiều công trình khác. Với đội ngũ giàu kinh nghiệm cùng quy trình thiết kế – sản xuất – thi công khép kín, Mộc Phương luôn nỗ lực mang đến những công trình chất lượng, đúng tiến độ và phù hợp với nhu cầu thực tế của từng khách hàng.

Hãy cùng khám phá những dự án tiêu biểu để cảm nhận rõ hơn về phong cách thiết kế, chất lượng hoàn thiện và giá trị mà Mộc Phương mang đến trong mỗi công trình."
)

image_path = Rails.root.join("app/assets/images/default/img.png")
image2_path = Rails.root.join("app/assets/images/default/img2.png")
image3_path = Rails.root.join("app/assets/images/default/img3.png")
image4_path = Rails.root.join("app/assets/images/default/img4.png")
logo_path = Rails.root.join("app/assets/images/default/logo.png")

slogan.image.attach(
  io: File.open(logo_path),
  filename: "img.png",
  content_type: "image/png"
)

decorationData = Decoration.all
decorationData.each do |t|
  t.images.attach(
    io: File.open(image_path),
    filename: "img.png",
    content_type: "image/png"
  )
  t.images.attach(
    io: File.open(image2_path),
    filename: "img.png",
    content_type: "image/png"
  )
  t.images.attach(
    io: File.open(image3_path),
    filename: "img.png",
    content_type: "image/png"
  )
end

product = Product.all
product.each do |t|
  t.images.attach(
    io: File.open(image2_path),
    filename: "img.png",
    content_type: "image/png"
  )
  t.images.attach(
    io: File.open(image3_path),
    filename: "img.png",
    content_type: "image/png"
  )
  t.images.attach(
    io: File.open(image4_path),
    filename: "img.png",
    content_type: "image/png"
  )
end


contactData.image.attach(
  io: File.open(image2_path),
  filename: "img.png",
  content_type: "image/png"
)

intr = Introduction.first || Introduction.create!(
  content: <<~TEXT,
    Mộc Phương là đơn vị chuyên thiết kế, sản xuất và thi công nội thất với mong muốn mang đến những không gian sống hiện đại, tiện nghi và giàu tính thẩm mỹ. Chúng tôi kết hợp giữa chất liệu gỗ chất lượng, tay nghề thủ công tỉ mỉ và phong cách thiết kế sáng tạo để tạo nên những sản phẩm bền đẹp, phù hợp với nhu cầu của từng khách hàng.

    Với phương châm "Cam kết chất lượng - hậu mãi tốt nhất", Mộc Phương luôn đặt sự hài lòng của khách hàng lên hàng đầu trong từng công trình. Từ nội thất nhà ở, căn hộ, biệt thự đến văn phòng, showroom và cửa hàng, chúng tôi cam kết mang đến giải pháp tối ưu về công năng, thẩm mỹ và chi phí.

    Mộc Phương không chỉ tạo ra những món đồ nội thất, mà còn kiến tạo những không gian sống truyền cảm hứng, nơi mỗi chi tiết đều góp phần nâng tầm chất lượng cuộc sống của bạn.
  TEXT
  link_video: "https://facebook.com/example"
)

intr.images.attach(
    io: File.open(image4_path),
    filename: "img.png",
    content_type: "image/png"
  )
intr.images.attach(
    io: File.open(image3_path),
    filename: "img.png",
    content_type: "image/png"
  )
intr.images.attach(
    io: File.open(image2_path),
    filename: "img.png",
    content_type: "image/png"
  )


designOffice = DesignOffice.first || DesignOffice.create!(
  content: "VĂN PHÒNG THIẾT KẾ MỘC PHƯƠNG

Văn phòng Thiết kế Mộc Phương là nơi những ý tưởng sáng tạo được hình thành và phát triển thành các giải pháp nội thất phù hợp với nhu cầu thực tế của từng khách hàng. Với đội ngũ kiến trúc sư và nhà thiết kế giàu kinh nghiệm, chúng tôi luôn lắng nghe mong muốn của khách hàng để tạo nên những không gian hài hòa giữa công năng, thẩm mỹ và phong cách riêng.

Mỗi bản thiết kế đều được nghiên cứu kỹ lưỡng về bố cục, vật liệu, màu sắc và ánh sáng nhằm tối ưu diện tích sử dụng, nâng cao trải nghiệm sinh hoạt và đảm bảo tính đồng bộ trong toàn bộ công trình. Từ nhà ở, căn hộ, biệt thự đến văn phòng, showroom và cửa hàng, Mộc Phương luôn mang đến những giải pháp thiết kế sáng tạo, hiện đại và phù hợp với ngân sách của khách hàng.

Với sự kết hợp chặt chẽ giữa đội ngũ thiết kế và xưởng sản xuất, Mộc Phương đảm bảo mọi ý tưởng đều được hiện thực hóa một cách chính xác, góp phần tạo nên những không gian sống và làm việc chất lượng, bền vững theo thời gian."
)

designOffice.image.attach(
  io: File.open(image_path),
  filename: "img.png",
  content_type: "image/png"
)

factoryData = Factory.first || Factory.create!(
  content: "Xưởng sản xuất
XƯỞNG SẢN XUẤT MỘC PHƯƠNG

Xưởng sản xuất Mộc Phương là nơi hiện thực hóa những ý tưởng thiết kế thành các sản phẩm nội thất chất lượng, đáp ứng yêu cầu về thẩm mỹ, công năng và độ bền. Với hệ thống máy móc hiện đại cùng đội ngũ kỹ thuật viên, thợ mộc giàu kinh nghiệm, mỗi sản phẩm đều được gia công tỉ mỉ và kiểm tra kỹ lưỡng trước khi bàn giao đến khách hàng.

Quy trình sản xuất được thực hiện khép kín từ lựa chọn nguyên vật liệu, cắt, gia công, sơn hoàn thiện đến lắp ráp và kiểm định chất lượng. Điều này giúp Mộc Phương chủ động kiểm soát tiến độ, tối ưu chi phí và đảm bảo mỗi công trình đều đạt tiêu chuẩn cao về chất lượng.

Với phương châm "Chất lượng tạo nên giá trị – Uy tín tạo dựng niềm tin", xưởng sản xuất Mộc Phương luôn không ngừng cải tiến công nghệ, nâng cao tay nghề và mang đến những giải pháp nội thất bền đẹp, góp phần kiến tạo không gian sống và làm việc tiện nghi, hiện đại cho mọi khách hàng."
)

factoryData.image.attach(
  io: File.open(image_path),
  filename: "img.png",
  content_type: "image/png"
)


projectInformation = ProjectInformation.all
projectInformation.each do |t|
  t.images.attach(
    io: File.open(image2_path),
    filename: "img.png",
    content_type: "image/png"
  )
  t.images.attach(
    io: File.open(image3_path),
    filename: "img.png",
    content_type: "image/png"
  )
  t.images.attach(
    io: File.open(image4_path),
    filename: "img.png",
    content_type: "image/png"
  )
end


projectInforInfor.images.attach(
  io: File.open(image2_path),
  filename: "img.png",
  content_type: "image/png")

projectInforInfor.images.attach(
  io: File.open(image4_path),
  filename: "img.png",
  content_type: "image/png")

projectInforInfor.images.attach(
  io: File.open(image3_path),
  filename: "img.png",
  content_type: "image/png")

decoration = Decoration.all
decoration.each do |t|
  t.images.attach(
    io: File.open(image2_path),
    filename: "img.png",
    content_type: "image/png"
  )
  t.images.attach(
    io: File.open(image3_path),
    filename: "img.png",
    content_type: "image/png"
  )
  t.images.attach(
    io: File.open(image4_path),
    filename: "img.png",
    content_type: "image/png"
  )
end


accessoryData = Accessory.all
accessoryData.each do |t|
  t.images.attach(
    io: File.open(image2_path),
    filename: "img.png",
    content_type: "image/png"
  )
  t.images.attach(
    io: File.open(image3_path),
    filename: "img.png",
    content_type: "image/png"
  )
  t.images.attach(
    io: File.open(image4_path),
    filename: "img.png",
    content_type: "image/png"
  )
end

Showroom.create!(content: "Chào mừng bạn đến với Showroom Mộc Phương – nơi trưng bày những mẫu nội thất được thiết kế tinh tế, hiện đại và đa dạng phong cách. Đây là không gian giúp khách hàng trực tiếp trải nghiệm chất lượng sản phẩm, cảm nhận từng chất liệu, màu sắc và sự hoàn thiện trong từng chi tiết.

Tại showroom, Mộc Phương giới thiệu các giải pháp nội thất dành cho phòng khách, phòng ngủ, phòng bếp, văn phòng, showroom và nhiều không gian khác. Đội ngũ tư vấn luôn sẵn sàng lắng nghe, hỗ trợ và đưa ra những giải pháp phù hợp với nhu cầu, phong cách cũng như ngân sách của từng khách hàng.

Hãy ghé thăm Showroom Mộc Phương để khám phá những sản phẩm chất lượng, cập nhật xu hướng nội thất mới và tìm kiếm nguồn cảm hứng cho không gian sống và làm việc của bạn.")
showroom = Showroom.all
showroom.each do |t|
  t.images.attach(
    io: File.open(image2_path),
    filename: "img.png",
    content_type: "image/png"
  )
  t.images.attach(
    io: File.open(image3_path),
    filename: "img.png",
    content_type: "image/png"
  )
  t.images.attach(
    io: File.open(image4_path),
    filename: "img.png",
    content_type: "image/png"
  )
end