require_relative 'setup'

describe 'Stats' do
	
	before do
		VCR.use_cassette('fetch_profile') do
			@stats = Wishlistr::Stats.new 'userdemo'
		end
	end

	it 'followers' do
		@stats.followers.wont_be_nil
	end

	it 'following' do
		@stats.following.must_equal 1
	end

	it 'items' do
		@stats.items.must_equal 3
	end

	it 'views' do
		@stats.views.wont_be_nil
	end

	it 'links' do
		@stats.links.must_equal 3
	end

	it 'clicks' do
		@stats.clicks.wont_be_nil
	end
	
end