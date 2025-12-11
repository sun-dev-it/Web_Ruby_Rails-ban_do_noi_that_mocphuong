require_relative "boot"

require "rails/all"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module WebRubyRailsBanDoNoiThatMocphuong
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 8.0

    # Thêm đường dẫn build assets
    config.assets.paths << Rails.root.join("app/assets/builds")

    # Bỏ qua các thư mục lib không có file .rb
    config.autoload_lib(ignore: %w[assets tasks])

    # ---- Cấu hình timezone ----
    # Giờ hiển thị trong view sẽ là giờ Việt Nam
    config.time_zone = "Asia/Ho_Chi_Minh"
    # Lưu dữ liệu từ database theo giờ local thay vì UTC
    config.active_record.default_timezone = :local

    # Configuration for the application, engines, and railties goes here.
    # These settings can be overridden in specific environments using the files
    # in config/environments, which are processed later.
    #
    # config.eager_load_paths << Rails.root.join("extras")
  end
end
