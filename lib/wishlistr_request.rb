require 'rubygems'
require 'httparty'
require 'nokogiri'

module Wishlistr

	class Wishlistr

		def initialize(username)
			@username = username
		end

		protected
		def parse(file)
			Nokogiri::HTML(file)
		end

		
		def remote(uri)
			parse(HTTParty.get(uri).body)
		end

		def get_profile
			remote("http://www.wishlistr.com/profile/#{@username}")
		end

		def get_wishlist
			remote("http://www.wishlistr.com/#{@username}")
		end

		def get_friends(type)
			remote("http://www.wishlistr.com/profile/#{@username}/#{type}/")
		end
	end
	
end