class StaticPagesController < ApplicationController

  def home
    if params[:user_id]
      @photos = Flickr.photos.search(user_id: params[:user_id])
    end
  end

end
