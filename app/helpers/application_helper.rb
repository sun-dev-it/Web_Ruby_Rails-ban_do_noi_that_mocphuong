module ApplicationHelper
  def header_link(name, path)
    is_active = current_page?(path)
  
    underline = is_active ? "after:scale-x-100 after:bg-white"
                          : "after:scale-x-0 after:bg-transparent"
  
    link_to name, path,
      class: "relative pb-2 text-white
              after:absolute after:left-0 after:bottom-0 after:h-[2px]
              after:w-full after:origin-left
              after:transform after:transition-transform after:duration-300
              hover:after:scale-x-100 hover:after:bg-white
              #{underline}"
  end


  def bg_rgba(hex_color, opacity)
    return "" if hex_color.blank?

    hex = hex_color.delete("#")

    r = hex[0..1].to_i(16)
    g = hex[2..3].to_i(16)
    b = hex[4..5].to_i(16)

    "background-color: rgba(#{r}, #{g}, #{b}, #{opacity});"
  end

  def header_hidden_link(name, path)
    is_active = current_page?(path)

    text_color = is_active ? "text-gray-900 font-semibold" : "text-gray-600"
    bg_active  = is_active ? "bg-gray-100 rounded-lg px-3 py-2" : "px-3 py-2"

    link_to name, path,
      class: "relative block transition-colors duration-200
              #{text_color} #{bg_active}
              hover:bg-gray-100 hover:rounded-lg hover:text-gray-900"
  end


  def role_to_vietnamese(role)
    {
      "super_admin" => "Admin tổng",
      "admin_manager" => "Admin quản lý",
      "staff" => "staff"
    }[role] || role
  end
end
