class Podcast < ActiveRecord::Base
  include Postable

  belongs_to :author, foreign_key: :user_id
end