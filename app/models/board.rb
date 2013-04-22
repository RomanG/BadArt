class Board < ActiveRecord::Base
  attr_accessible :link
  belongs_to :user
  has_many :images
end
