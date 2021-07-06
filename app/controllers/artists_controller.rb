class ArtistsController < ApplicationController
    def index
        #byebug
        @artists = Artist.all
    end
    
    def show
        @artist = Artist.find_by(id: params[:id])
    end

    def edit
        @artist = Artist.find_by(id: params[:id])
    end
    
    def update
        @artist = Artist.find_by(id: params[:id])
        if @artist.update(artist_params)
          redirect_to artist_path(@artist)
        else
          render 'edit'
        end
    end

    def new
        @artist = Artist.new
    end
    
    def create
        @artist=Artist.create(artist_params)
        redirect_to artist_path (@artist)
    end

    private

    def artist_params
        params.require(:artist).permit(:name, :bio)
    end
end
