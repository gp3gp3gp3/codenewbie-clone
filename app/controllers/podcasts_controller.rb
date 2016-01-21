class PodcastsController < ApplicationController

  def show
    @podcast = Podcast.find_by(id: params[:id])
  end

end