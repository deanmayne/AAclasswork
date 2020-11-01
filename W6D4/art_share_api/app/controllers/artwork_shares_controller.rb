class ArtworkSharesController < ApplicationController

  def create
    artwork_share = ArtworkShare.new(new_params)
    if artwork_share.save
        render json: artwork_share
    else
        render json: artwork_share.errors.full_messages, status: 422
    end
  end

  def destroy
    artwork_share = ArtworkShare.find_by(id: params[:id])
    artwork_share.destroy
    render json: artwork_share    
    # redirect_to artworkshares_url
  end

  private
  def new_params
    params.require(:artworkshare).permit(:artwork_id, :viewer_id)
  end

end
