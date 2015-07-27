require_relative 'setup'

describe 'Wishes' do

	before do 
		VCR.use_cassette('fetch_wishes') do
			@wishes = Wishlistr::Wishes.new 'userdemo'
			@title = @wishes.title
			@wishes = @wishes.items
		end
	end

	it 'has title' do
		@title.must_equal 'Demo Wishlist'
	end

	it 'has 3 items' do
		@wishes.count.must_equal 3
	end

	it 'has title' do
		@wishes[0].title.must_match /Neuromancer/
	end

	it 'has image' do
		@wishes[0].image.must_match /amazon/
	end

	it 'has link' do
		@wishes[0].link.must_match /amazon/
	end

end