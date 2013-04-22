class MultiBoard < ActiveRecord::Base
  attr_accessible :link
  has_many :users
  has_many :images
end

