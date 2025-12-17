class Promotion < ApplicationRecord
    has_one_attached :image

    def youtube_embed_url
        return if video.blank?

        if video.include?("youtube.com/shorts/")
          video_id = video.split("shorts/").last.split("?").first
          "https://www.youtube.com/embed/#{video_id}"
        elsif video.include?("youtube.com/embed/")
          video
        elsif video.include?("watch?v=")
          video_id = video.split("watch?v=").last.split("&").first
          "https://www.youtube.com/embed/#{video_id}"
        else
          video
        end
    end

    def youtube_aspect_class
        video.include?("shorts") ? "aspect-[9/16]" : "aspect-video"
    end

end
