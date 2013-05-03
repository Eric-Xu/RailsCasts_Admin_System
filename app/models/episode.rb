class Episode < ActiveRecord::Base
  attr_accessible :description, :title

  has_many :taggings
  has_many :tags, through: :taggings
end
