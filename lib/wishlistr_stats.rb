module Wishlistr
	class Stats < Wishlistr
		attr_reader :followers, :following, :items, :views, :links, :clicks
	
		def initialize(username)
			super(username)

			stats = get_profile()

			@followers = stats.css('ul.user-stats li')[0].text.to_i
			@following = stats.css('ul.user-stats li #followingCount').text.to_i
			@items = stats.css('ul.stats li')[0].text.to_i
			@views = stats.css('ul.stats li')[1].text.to_i
			@links = stats.css('ul.stats li')[2].text.to_i
			@clicks = stats.css('ul.stats li')[3].text.to_i
		end

	end
end