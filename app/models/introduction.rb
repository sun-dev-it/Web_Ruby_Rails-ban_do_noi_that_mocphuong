class Introduction < ApplicationRecord
  has_many_attached :images, dependent: :destroy

  def youtube_embed_url
    return if link_video.blank?

    if link_video.include?("youtube.com/shorts/")
      video_id = link_video.split("shorts/").last.split("?").first
      "https://www.youtube.com/embed/#{video_id}"
    elsif link_video.include?("youtube.com/embed/")
      link_video
    elsif link_video.include?("watch?v=")
      video_id = link_video.split("watch?v=").last.split("&").first
      "https://www.youtube.com/embed/#{video_id}"
    else
      link_video
    end
  end

  def youtube_aspect_class
    return "aspect-video" if link_video.blank?

    link_video.include?("shorts") ? "aspect-[9/16]" : "aspect-video"
  end
end
