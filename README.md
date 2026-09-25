
# Mộc Phương Interior - Website Thương mại Nội thất

Website thương mại điện tử và giới thiệu nội thất được xây dựng để hỗ trợ kinh doanh cho công ty Mộc Phương. Dự án này tập trung vào việc trình bày sản phẩm, dự án thi công, showroom, thông tin công ty và quy trình đặt hàng / liên hệ trực tiếp với khách hàng.

## Tổng quan dự án

Dự án này được phát triển với Ruby on Rails để tạo ra một website hiện đại, thân thiện với người dùng và dễ mở rộng. Giao diện được thiết kế theo phong cách tối giản, hiện đại, phù hợp với lĩnh vực nội thất và kiến trúc.

### Các chức năng chính

#### 1. Người dùng (Customer experience)
- Hiển thị danh mục sản phẩm theo từng nhóm và chuyên mục rõ ràng
- Trình bày sản phẩm nổi bật, sản phẩm mới, sản phẩm bán chạy và sản phẩm theo từng loại phòng hoặc phong cách
- Trang giới thiệu công ty, tầm nhìn, phong cách thiết kế và giá trị thương hiệu Mộc Phương
- Hiển thị dự án thực tế, showroom, không gian nội thất mẫu và các công trình đã triển khai
- Form liên hệ và yêu cầu báo giá giúp khách hàng dễ dàng đặt câu hỏi hoặc yêu cầu tư vấn
- Tương tác với nội dung bởi các section giới thiệu, slogan, hình ảnh và video quảng bá
- Tối ưu giao diện trên desktop, tablet và mobile để trải nghiệm mượt mà trên mọi thiết bị

#### 2. Quản trị viên (Admin management)
- Quản lý hình ảnh và nội dung giới thiệu công ty, chính sách, slogan và thông tin thương hiệu
- Quản lý danh mục sản phẩm, phân loại sản phẩm và dữ liệu liên quan
- Quản lý thông tin sản phẩm, giá trị, hình ảnh, mã sản phẩm và trạng thái hiển thị
- Quản lý dự án thực tế, showroom, vai trò và nội dung tương ứng với từng không gian
- Quản lý phụ kiện, màu sắc giao diện, logo, hình ảnh banner và các yếu tố branding của website
- Cập nhật và điều chỉnh giao diện website theo định hướng thương hiệu của cửa hàng
- Quản lý các đơn hàng, yêu cầu tư vấn và thông tin liên hệ từ khách hàng
- Quản lý quyền truy cập và phân quyền nội dung trong hệ thống admin

#### 3. Tích hợp hệ thống và trải nghiệm người dùng nâng cao
- Upload và lưu trữ hình ảnh trên Cloudinary để tối ưu tốc độ tải và chất lượng hình ảnh
- Đăng nhập nhanh qua tài khoản Google và Facebook bằng OAuth
- Hệ thống gửi email thông báo cho khách hàng và quản trị viên qua Resend
- Tương tác tốt với dữ liệu dạng media và nội dung thực tế của doanh nghiệp
- Cấu trúc dự án rõ ràng theo mô hình MVC của Rails, dễ bảo trì và mở rộng trong tương lai

#### 4. Tính năng business-focused
- Hỗ trợ bán hàng trực tuyến thông qua hình thức trình bày sản phẩm chuyên nghiệp và thân thiện
- Tạo cơ hội tiếp cận khách hàng qua form liên hệ, yêu cầu tư vấn và tối ưu hóa chuyển đổi thành khách hàng
- Cung cấp thông tin sản phẩm và dự án để khách hàng dễ đưa ra quyết định mua hàng
- Hỗ trợ doanh nghiệp quản lý nội dung thương hiệu một cách chuyên nghiệp trên một nền tảng duy nhất

## Công nghệ sử dụng

### Backend
- Ruby on Rails 8
- PostgreSQL
- Active Storage
- Minitest / Capybara cho kiểm thử tự động
- OmniAuth cho xác thực mạng xã hội
- Resend cho gửi email

### Frontend
- Tailwind CSS
- Stimulus
- Turbo
- Importmap
- HTML5 / CSS3 / JavaScript

### DevOps & Deployment
- Render deployment
- Dockerfile hỗ trợ triển khai
- dotenv cho biến môi trường
- Cloudinary cho lưu trữ hình ảnh

### Công cụ hỗ trợ
- Git / GitHub
- Rails Console / DB seeds
- Admin panel quản lý nội dung

## Kỹ năng thể hiện qua dự án

Dự án này cho thấy khả năng của tôi trong các lĩnh vực sau:
- Xây dựng website thương mại điện tử bằng Ruby on Rails
- Thiết kế giao diện responsive và tối ưu trải nghiệm người dùng
- Tổ chức cấu trúc MVC trong Rails
- Quản lý dữ liệu và lưu trữ media
- Tích hợp form liên hệ, email và xác thực người dùng
- Triển khai ứng dụng lên môi trường production
- Viết test và kiểm tra logic ứng dụng

## Mô tả ngắn dùng cho CV

Tôi đã xây dựng và triển khai website thương mại nội thất bằng Ruby on Rails, sử dụng PostgreSQL, Tailwind CSS, Stimulus, Turbo và Active Storage để phát triển giao diện hiện đại, tối ưu trải nghiệm người dùng và quản lý dữ liệu hiệu quả. Dự án bao gồm các module như giới thiệu công ty, danh mục sản phẩm, dự án nội thất, form liên hệ, quản trị nội dung và upload hình ảnh qua Cloudinary. Tôi cũng tích hợp OAuth với Google/Facebook, gửi email bằng Resend và triển khai trên Render, đồng thời áp dụng test tự động để đảm bảo tính ổn định cho ứng dụng.

## Cài đặt và chạy local

```bash
bundle install
bin/rails db:create
bin/rails db:migrate
bin/rails db:seed
bin/rails server
```

Chạy Tailwind nếu cần theo dõi giao diện:

```bash
bin/rails tailwindcss:watch
```