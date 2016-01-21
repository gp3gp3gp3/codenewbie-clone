class Podcast < ActiveRecord::Base
  belongs_to :author, foreign_key: :user_id

  after_create :create_stories

  private

  def create_stories
    Story.create(postable: self)
  end

end