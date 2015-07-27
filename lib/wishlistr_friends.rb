module Wishlistr
	class Friends < Wishlistr
		attr_reader :followers, :following

		def initialize(username)
			super(username)

			@followers = parse_friends(get_friends('followers'))
			@following = parse_friends(get_friends('following'))
		end

		private
		def parse_friends(list)
			friends = Array.new

			list.css('ul.list-follow li').each do |item|
				friend = OpenStruct.new
				friend.username = item.css('h4 span').text
				friend.name = item.css('h4 a').text
				friend.avatar = item.css('img.avatar')[0]['src']
				friend.bio = item.css('p').text
				friends << friend
			end

			friends
		end
		
	end
end