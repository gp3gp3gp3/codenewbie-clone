class StoryController < ApplicationController

  def index
    @stories = Story.recent_stories(6)
  end

end