class Tagging < ActiveRecord::Base
  attr_accessible :episode_id, :tag_id

  belongs_to :tag
  belongs_to :episode
end
