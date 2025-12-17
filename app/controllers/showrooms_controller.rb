class ShowroomsController < ApplicationController
    def show 
        @showroom = Showroom.first
    end
end
