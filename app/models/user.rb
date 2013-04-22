class User < ActiveRecord::Base
  attr_accessible :name, :password
  has_many :images
  has_many :boards
  has_many :multi_boards
end