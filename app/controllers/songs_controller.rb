class SongsController < ApplicationController

    def new
        @song = Song.new
    end

    def create
    end

    def show
    end 

    def index
    end 

    def edit
    end

    def update
    end

    def destroy
    end 

    private

    def song_params
        params.require(:song).permit(:title, :released, :release_year, :artist_name, :genre)
    end

end
