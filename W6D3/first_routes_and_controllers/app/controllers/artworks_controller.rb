class ArtworksController < ApplicationController
  def index
    # render json: Artwork.all
    artwork = Artwork.find_by(artist_id: params[:user_id]) 
    artwork_share = ArtworkShare.find_by(viewer_id: params[:user_id])
    render json: {artwork: artwork, artwork_share: artwork_share}
  end

  def create
    artwork = Artwork.new(new_params)
    if artwork.save
        render json: artwork
    else
        render json: artwork.errors.full_messages, status: 422
    end
  end

  def show
    render json: Artwork.find_by(id: params[:id])
  end

  def update
    artwork = Artwork.find_by(id: params[:id])
    if artwork.update(new_params)
            redirect_to artworks_url(artwork)
    else
        render json: artwork.errors.full_messages, status: 422
    end
  end

  def destroy
    artwork = Artwork.find_by(id: params[:id])
    artwork.destroy
        redirect_to artworks_url
  end

  private
  def new_params
    params.require(:artwork).permit(:title, :image_url, :artist_id)
  end

end
