module Wishlistr
	class Profile < Wishlistr
		attr_reader :name, :avatar, :location, :url, :bio

		def initialize(username)
			super(username)

			profile = get_wishlist()

			@name = profile.css("ul.profile li strong a").text
			@avatar = profile.css('.user-avatar a img')[0]["src"]
			@location = profile.css("ul.profile .icon-location").text
			@url = profile.css("ul.profile .icon-url a").text
			@bio = profile.css("div.bio").text
		end

	end
end