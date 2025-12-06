module ApplicationHelper
  def header_link(name, path)
    active = current_page?(path) ? "after:w-full after:bg-white" : "after:w-0 after:bg-transparent"
    link_to name, path,
      class: "relative pb-2 text-white 
              after:absolute after:left-0 after:bottom-0 after:h-[2px] 
              after:transition-all after:duration-300 
              hover:after:w-full hover:after:bg-white
              #{active}"
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
    active = current_page?(path) ? "after:w-full after:bg-white" : "after:w-0 after:bg-transparent"
    link_to name, path,
      class: "relative pb-2 text-black 
              after:absolute after:left-0 after:bottom-0 after:h-[2px] 
              after:transition-all after:duration-300 
              hover:after:w-full hover:after:bg-white
              #{active}"
  end

end
