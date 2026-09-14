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
  "Ghế thư giãn",
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
  "Cửa nhựa composite",
  "Rèm cửa cao cấp",
  "Giấy dán tường",
  "Đèn trang trí",
  "Thảm trải sàn",
  "Gương decor",
  "Lam gỗ trang trí"
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
  "Khách sạn",
  "Căn hộ cao cấp",
  "Văn phòng",
  "Spa & showroom",
  "Căn hộ studio",
  "Biệt thự nghỉ dưỡng",
  "Nhà phố ven sông",
  "Căn hộ tối giản",
  "Văn phòng sáng tạo",
  "Cửa hàng thời trang",
  "Quán cà phê hiện đại",
  "Phòng khám thẩm mỹ",
  "Khu nghỉ dưỡng biển",
  "Nhà hàng phong cách Nhật"
]

listProjectInformation.each do |i|
  unless ProjectInformation.exists?(name: i)
    ProjectInformation.create!(name: i)
  end
end

listProjectInformationFeatured = [
  "Biệt thự",
  "Nhà phố",
  "Cửa hàng",
  "Căn hộ cao cấp",
  "Văn phòng",
  "Biệt thự nghỉ dưỡng",
  "Nhà phố ven sông",
  "Văn phòng sáng tạo",
  "Khu nghỉ dưỡng biển"
]

listProjectInformation.each do |name|
  project = ProjectInformation.find_or_create_by!(name: name)
  project.update!(featured: listProjectInformationFeatured.include?(name))
  if project.content.blank?
    project.update!(content: "Dự án #{name} được Mộc Phương thiết kế và hoàn thiện theo nhu cầu thực tế, cân bằng giữa công năng, thẩm mỹ và chất lượng thi công.")
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

featuredProducts = [
  {
    name: "Sofa phòng khách hiện đại",
    price: 18500000,
    description: "Sofa thiết kế tối giản với đệm ngồi êm ái, phù hợp cho không gian phòng khách hiện đại.",
    size: "2800 x 900 x 850 mm",
    material: "Gỗ tự nhiên, vải cao cấp",
    category: "Sofa"
  },
  {
    name: "Giường ngủ gỗ hiện đại",
    price: 12900000,
    description: "Giường ngủ chắc chắn, đường nét thanh lịch giúp phòng ngủ trở nên ấm áp và tinh tế.",
    size: "1800 x 2000 mm",
    material: "Gỗ công nghiệp phủ Melamine",
    category: "Giường"
  },
  {
    name: "Tủ áo cánh kính sang trọng",
    price: 16800000,
    description: "Tủ áo tối ưu không gian lưu trữ với thiết kế cánh kính hiện đại và nhiều ngăn tiện dụng.",
    size: "2400 x 600 x 2400 mm",
    material: "Gỗ công nghiệp, kính cường lực",
    category: "Tủ áo"
  },
  {
    name: "Bàn ăn gia đình tối giản",
    price: 8900000,
    description: "Bàn ăn thanh thoát, bề mặt rộng rãi và dễ kết hợp với nhiều phong cách nội thất.",
    size: "1600 x 800 x 750 mm",
    material: "Gỗ cao su ghép phủ sơn PU",
    category: "Bàn ăn"
  },
  {
    name: "Kệ TV đa năng",
    price: 7600000,
    description: "Kệ TV có hệ thống ngăn kéo tiện dụng, tạo điểm nhấn gọn gàng cho phòng khách.",
    size: "2000 x 400 x 500 mm",
    material: "Gỗ công nghiệp phủ Acrylic",
    category: "Kệ TV"
  },
  {
    name: "Bàn trang điểm thanh lịch",
    price: 6200000,
    description: "Bàn trang điểm nhỏ gọn với gương tích hợp, phù hợp cho phòng ngủ hiện đại.",
    size: "1000 x 450 x 1350 mm",
    material: "Gỗ công nghiệp phủ Melamine",
    category: "Bàn trang điểm"
  }
]

featuredProducts.each do |data|
  category = Category.find_or_create_by!(name: data[:category])
  product = Product.find_or_initialize_by(name: data[:name])
  product.assign_attributes(
    price: data[:price],
    description: data[:description],
    size: data[:size],
    material: data[:material],
    category: category,
    featured: true,
    promotion: false,
    discount: 0
  )
  product.save!
end

catalogProducts = [
  ["Tab đầu giường gỗ sồi", 3200000, "Tab đầu giường nhỏ gọn với ngăn kéo tiện dụng.", "Gỗ sồi tự nhiên", "500 x 400 x 550 mm", "Tab đầu giường"],
  ["Bàn học liền kệ sách", 4800000, "Bàn học tối ưu diện tích cho phòng ngủ và phòng làm việc.", "Gỗ công nghiệp phủ Melamine", "1200 x 600 x 1800 mm", "Bàn học"],
  ["Gương trang trí khung gỗ", 2100000, "Gương decor tạo điểm nhấn thanh lịch cho không gian.", "Kính cao cấp, gỗ tự nhiên", "800 x 1200 mm", "Gương trang trí"],
  ["Kệ vách ngăn phòng khách", 6500000, "Kệ vách ngăn đa năng giúp phân chia không gian nhẹ nhàng.", "Gỗ công nghiệp phủ Acrylic", "1800 x 350 x 2200 mm", "Kệ vách ngăn"],
  ["Tủ trưng bày cửa kính", 9800000, "Tủ trưng bày hiện đại với hệ đèn làm nổi bật vật dụng.", "Gỗ công nghiệp, kính cường lực", "900 x 400 x 2000 mm", "Tủ trưng bày"],
  ["Tủ giày thông minh", 5900000, "Tủ giày nhiều ngăn, thiết kế gọn gàng cho khu vực sảnh vào.", "Gỗ công nghiệp phủ Melamine", "1200 x 350 x 1100 mm", "Tủ giày"],
  ["Ghế thư giãn bọc vải", 4200000, "Ghế thư giãn êm ái cho góc đọc sách và nghỉ ngơi.", "Khung gỗ, vải bố cao cấp", "750 x 800 x 950 mm", "Ghế thư giãn"],
  ["Bộ chăn ga cotton cao cấp", 1850000, "Bộ chăn ga mềm mại với màu sắc trang nhã và dễ phối.", "Cotton 100%", "Bộ tiêu chuẩn 1m8", "Chăn, ga, gối, nệm"],
  ["Bàn làm việc chân sắt", 3650000, "Bàn làm việc tối giản, chắc chắn cho văn phòng hiện đại.", "Gỗ công nghiệp, sắt sơn tĩnh điện", "1400 x 600 x 750 mm", "Bàn làm việc"],
  ["Ghế văn phòng công thái học", 4750000, "Ghế hỗ trợ tư thế ngồi thoải mái trong thời gian dài.", "Lưới thoáng khí, khung hợp kim", "650 x 650 x 1150 mm", "Ghế văn phòng"],
  ["Kệ sách âm tường", 5300000, "Kệ sách thanh thoát giúp tận dụng chiều cao của tường.", "Gỗ công nghiệp phủ sơn mờ", "1600 x 300 x 2000 mm", "Kệ sách"],
  ["Bàn trà mặt đá", 3900000, "Bàn trà mặt đá sang trọng cho phòng khách hiện đại.", "Đá ceramic, chân sắt sơn tĩnh điện", "1000 x 600 x 420 mm", "Bàn trà"],
  ["Ghế ăn bọc nệm", 1250000, "Ghế ăn có đệm ngồi êm và thiết kế đồng bộ với bàn ăn.", "Gỗ cao su, vải nỉ", "480 x 520 x 820 mm", "Ghế ăn"],
  ["Tủ bếp chữ L hiện đại", 28500000, "Tủ bếp chữ L tối ưu công năng và không gian lưu trữ.", "Gỗ công nghiệp chống ẩm, đá quartz", "Theo kích thước thực tế", "Tủ bếp"],
  ["Tủ lavabo phòng tắm", 4600000, "Tủ lavabo chống ẩm với thiết kế gọn và dễ vệ sinh.", "Nhựa PVC phủ sơn, đá nhân tạo", "800 x 500 x 850 mm", "Tủ lavabo"],
  ["Giường tầng trẻ em", 8900000, "Giường tầng chắc chắn, tối ưu không gian cho phòng trẻ em.", "Gỗ tự nhiên sơn an toàn", "1000 x 2000 x 1800 mm", "Giường tầng"],
  ["Tủ áo cửa lùa tối giản", 11200000, "Tủ áo cửa lùa giúp tiết kiệm diện tích phòng ngủ.", "Gỗ công nghiệp phủ Melamine", "1800 x 600 x 2200 mm", "Tủ áo"],
  ["Bàn trang điểm có ngăn kéo", 7200000, "Bàn trang điểm tinh tế với nhiều ngăn lưu trữ.", "Gỗ công nghiệp phủ Acrylic", "1100 x 500 x 1350 mm", "Bàn trang điểm"]
]

catalogProducts.each do |name, price, description, material, size, category_name|
  product = Product.find_or_initialize_by(name: name)
  product.assign_attributes(
    price: price,
    description: description,
    material: material,
    size: size,
    category: Category.find_or_create_by!(name: category_name),
    featured: false,
    promotion: false,
    discount: 0
  )
  product.save!
end

listCatalog.uniq.each_with_index do |category_name, index|
  2.times do |variant|
    product_name = "#{category_name} mẫu #{format('%02d', variant + 1)}"
    product = Product.find_or_initialize_by(name: product_name)
    product.assign_attributes(
      price: 1800000 + (index * 725000) + (variant * 450000),
      description: "Thiết kế #{category_name.downcase} hiện đại, dễ phối hợp và phù hợp nhiều không gian nội thất.",
      material: variant.zero? ? "Gỗ công nghiệp phủ Melamine" : "Gỗ tự nhiên tuyển chọn",
      size: "Thiết kế theo kích thước thực tế",
      category: Category.find_or_create_by!(name: category_name),
      featured: false,
      promotion: false,
      discount: 0
    )
    product.save!
  end
end

promotionProducts = [
  ["Sofa phòng khách hiện đại", 15900000],
  ["Giường ngủ gỗ hiện đại", 10900000],
  ["Bàn trang điểm thanh lịch", 5200000]
]

promotionProducts.each do |name, new_price|
  product = Product.find_by!(name: name)
  product.update!(promotion: true, new_price: new_price, discount: product.price - new_price)
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
  content: <<~TEXT
    Xưởng sản xuất
    XƯỞNG SẢN XUẤT MỘC PHƯƠNG

    Xưởng sản xuất Mộc Phương là nơi hiện thực hóa những ý tưởng thiết kế thành các sản phẩm nội thất chất lượng, đáp ứng yêu cầu về thẩm mỹ, công năng và độ bền. Với hệ thống máy móc hiện đại cùng đội ngũ kỹ thuật viên, thợ mộc giàu kinh nghiệm, mỗi sản phẩm đều được gia công tỉ mỉ và kiểm tra kỹ lưỡng trước khi bàn giao đến khách hàng.

    Quy trình sản xuất được thực hiện khép kín từ lựa chọn nguyên vật liệu, cắt, gia công, sơn hoàn thiện đến lắp ráp và kiểm định chất lượng. Điều này giúp Mộc Phương chủ động kiểm soát tiến độ, tối ưu chi phí và đảm bảo mỗi công trình đều đạt tiêu chuẩn cao về chất lượng.

    Với phương châm "Chất lượng tạo nên giá trị – Uy tín tạo dựng niềm tin", xưởng sản xuất Mộc Phương luôn không ngừng cải tiến công nghệ, nâng cao tay nghề và mang đến những giải pháp nội thất bền đẹp, góp phần kiến tạo không gian sống và làm việc tiện nghi, hiện đại cho mọi khách hàng.
  TEXT
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

Showroom.first || Showroom.create!(content: "Chào mừng bạn đến với Showroom Mộc Phương – nơi trưng bày những mẫu nội thất được thiết kế tinh tế, hiện đại và đa dạng phong cách. Đây là không gian giúp khách hàng trực tiếp trải nghiệm chất lượng sản phẩm, cảm nhận từng chất liệu, màu sắc và sự hoàn thiện trong từng chi tiết.

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

##########################################################################

promotionData = [
  {
    name: "Ưu đãi nội thất phòng khách",
    content: "Ưu đãi dành cho các sản phẩm phòng khách hiện đại, số lượng có hạn.",
    video: "https://www.youtube.com/watch?v=dQw4w9WgXcQ"
  },
  {
    name: "Không gian phòng ngủ tinh tế",
    content: "Khám phá các lựa chọn phòng ngủ với thiết kế tiện nghi và ấm áp.",
    video: "https://www.youtube.com/watch?v=dQw4w9WgXcQ"
  }
]

promotionData.each do |data|
  promotion = Promotion.find_or_initialize_by(name: data[:name])
  promotion.assign_attributes(content: data[:content], video: data[:video])
  promotion.save!
  unless promotion.image.attached?
    promotion.image.attach(
      io: File.open(image2_path),
      filename: "promotion.png",
      content_type: "image/png"
    )
  end
end

##########################################################################

demo_user = User.find_or_initialize_by(email: "khachhang@example.com")
demo_user.assign_attributes(name: "Khách hàng mẫu", role: "customer", provider: "seed")
demo_user.save!

requestData = {
  name: demo_user.name,
  phone: "0900000000",
  content: "Tôi muốn được tư vấn mẫu nội thất phù hợp cho căn hộ mới."
}
Request.find_or_create_by!(phone: requestData[:phone], content: requestData[:content]) do |request|
  request.name = requestData[:name]
end

sample_products = Product.where(name: ["Sofa phòng khách hiện đại", "Giường ngủ gỗ hiện đại"]).to_a
sample_order = demo_user.orders.find_or_initialize_by(phone: demo_user.email)
sample_order.assign_attributes(
  total_price: sample_products.sum { |product| product.price },
  status: "Đang chờ liên hệ"
)
sample_order.save!

sample_products.each do |product|
  sample_order.order_items.find_or_create_by!(product: product) do |item|
    item.quantity = 1
    item.price = product.price
  end
end

OrderHistory.find_or_create_by!(order: sample_order, user: demo_user, new_status: sample_order.status) do |history|
  history.previous_status = nil
end

cart_product = Product.find_by(name: "Bàn ăn gia đình tối giản")
if cart_product
  demo_user.cart_items.find_or_create_by!(product: cart_product) do |item|
    item.quantity = 1
  end
end