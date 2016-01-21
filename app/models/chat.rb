class Chat < ActiveRecord::Base

  after_create :create_stories

  private

  def create_stories
    Story.create(postable: self)
  end

end