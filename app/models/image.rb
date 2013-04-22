class Image < ActiveRecord::Base
  attr_accessible :link
  has_one :user
  has_many :boards
  has_many :multi_boards

  	def self.search(name)

# create a client object with your app credentials
	client = Flickr.new(:client_id => 'f4e398d71445be2bf1eac20a932e6768')

	images = client.get('/image', :q => name)

	images
	end
end

 # http://api.flickr.com/services/feeds/photos_public.gne?tags=cat&tagmode=any&format=json&jsoncallback=?

 # json_hash = JSON.parse(File.open('json_example.json').read)