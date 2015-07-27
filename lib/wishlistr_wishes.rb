module Wishlistr
	class Wishes < Wishlistr
		attr_reader :items, :title

		def initialize(username)
			super(username)
			
			wishlist = get_wishlist()

			@items = Array.new

			@title = wishlist.css("#wishlist-title").text

			wishlist.css("ul.wishlist li").each do |item|
				wish = OpenStruct.new
				wish.title = item.css('h4').text
				wish.image = item.css('img')[0]["src"] unless item.css('img').empty?
				wish.link = item.css('a.url')[0]["title"] unless item.css('img').empty?
				@items << wish
			end
		end

	end
end