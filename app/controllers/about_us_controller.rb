class AboutUsController < ApplicationController
    def index
        @design_office = DesignOffice.first
    end
end
