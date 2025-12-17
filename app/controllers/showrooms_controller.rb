class ShowroomsController < ApplicationController
    def index 
        @showroom = Showroom.first
    end
end
