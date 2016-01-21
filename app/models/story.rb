class Story < ActiveRecord::Base
  belongs_to :postable, polymorphic: true

end