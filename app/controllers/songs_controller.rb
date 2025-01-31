class SongsController < ApplicationController
    def index
        #byebug
        @songs = Song.all
    end
    
    def show
        @song = Song.find_by(id: params[:id])
    end

    def edit
        @song = Song.find_by(id: params[:id])
    end
    
    def update
        @song = Song.find_by(id: params[:id])
        if @song.update(song_params)
          redirect_to song_path(@song)
        else
          render 'edit'
        end
    end

    def new
        @song = Song.new
    end
    
    def create
        @song=Song.create(song_params)
        redirect_to song_path (@song)
    end

    private

    def song_params
        params.require(:song).permit(:name, :artist_id, :genre_id)
    end
end
