require_relative 'setup'

describe 'Friends' do
	before do 
		VCR.use_cassette('fetch_friends') do
			@friends = Wishlistr::Friends.new 'userdemo'
			@friends = @friends.following
		end
	end

	it 'has only 1 friend' do
		@friends.count.must_equal 1
	end

	it 'and has name' do
		@friends[0].name.must_equal 'Diego Costa'
	end

	it 'and has username' do
		@friends[0].username.must_equal 'diegocosta'
	end

	it 'and has avatar' do
		@friends[0].avatar.must_match /avatars/
	end

	it 'and has bio' do
		@friends[0].bio.must_equal ''
	end
end