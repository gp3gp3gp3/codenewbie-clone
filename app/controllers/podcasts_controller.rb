class PodcastsController < ApplicationController

  def show
    @podcast = Podcast.find_by(id: params[:id])
  end

  def index
    @podcasts = Podcast.order(created_at: :desc).limit(25)
  end

end