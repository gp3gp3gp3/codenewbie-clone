class Story < ActiveRecord::Base
  belongs_to :postable, polymorphic: true

  def self.recent_stories(limit)
    self.order('created_at DESC').limit(limit).map(&:postable)
  end
end