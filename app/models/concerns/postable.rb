module Postable
  extend ActiveSupport::Concern

  included do
    after_create :create_stories
  end

  private

  def create_stories
    Story.create(postable: self)
  end

end