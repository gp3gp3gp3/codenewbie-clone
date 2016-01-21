class Post < ActiveRecord::Base
  belongs_to :author, foreign_key: :user_id, class_name: :User

  after_create :create_stories

  private

  def create_stories
    Story.create(postable: self)
  end

end