class AboutUsController < ApplicationController
    def index
        @design_office = DesignOffice.first
        @introduction = Introduction.first
    end
end
