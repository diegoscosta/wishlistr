require_relative 'setup'

describe 'Profile' do

	before do 
		VCR.use_cassette('fetch_wishes') do
			@profile = Wishlistr::Profile.new 'userdemo'
		end
	end

	it "name" do
		@profile.name.must_equal 'User Demo'
	end

	it "avatar" do
		@profile.avatar.must_match /avatars/
	end

	it "location" do
		@profile.location.must_equal 'Salvador, BRA'
	end

	it "url" do
		@profile.url.must_match /wishlistr/
	end

	it "bio" do
		@profile.bio.must_match /Lorem ipsum dolor sit amet/
	end
	
end
