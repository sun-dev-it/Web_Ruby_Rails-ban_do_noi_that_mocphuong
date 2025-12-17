# Xóa ảnh của Slogan
Slogan.all.each do |slogan|
  slogan.image.purge if slogan.image.attached?
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

image_path = Rails.root.join("app/assets/images/default/img.png")
image2_path = Rails.root.join("app/assets/images/default/img2.png")
image3_path = Rails.root.join("app/assets/images/default/img3.png")
image4_path = Rails.root.join("app/assets/images/default/img4.png")
logo_path = Rails.root.join("app/assets/images/default/logo.png")

slogan = Slogan.first

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



contactData = Contact.first

contactData.image.attach(
  io: File.open(image2_path),
  filename: "img.png",
  content_type: "image/png"
)

intr = Introduction.first

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


designOffice = DesignOffice.first
designOffice.image.attach(
  io: File.open(image_path),
  filename: "img.png",
  content_type: "image/png"
)

factoryData = Factory.first
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

projectInforInfor = ProjectInformationInfor.first

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




