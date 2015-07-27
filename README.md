Wishlistr
=====
Brings user's profile on Wishlistr.com

[![Build Status](https://travis-ci.org/diegoscosta/wishlistr.svg?branch=master)](https://travis-ci.org/diegoscosta/wishlistr)

Installation
------------

You can install by cloning this repository:
```ssh
git clone https://github.com/diegoscosta/wishlistr.git
```

Then inside the wishlistr folder run:
```ssh
bundle install
```

You can also add wishlistr in your
```ruby
require 'wishlistr/lib/wishlistr.rb'
```

Usage
-----

**Fetching profile**
```ruby
profile = Wishlistr::Profile.new '{username}'

puts "Name: #{profile.name}"
puts "Avatar: #{profile.avatar}"
puts "Location: #{profile.location}"
puts "URL: #{profile.url}"
puts "BIO: #{profile.bio}"
```

**Fetching wishlist**
```ruby
wishes = Wishlistr::Wishes.new '{username}'

puts wishes.title

wishes.items.each do |item|
	puts "Title: #{item.title}"
	puts "Thumbnail: #{item.image}"
	puts "Link: #{item.link}"
    puts "-------------------------------"
end
```

**Fetching connections**
```ruby
friends = Wishlistr::Friends.new '{username}'

friends.followers.each do |friend|
	puts "Name: #{friend.name}"
	puts "Username: #{friend.username}"
	puts "Avatar: #{friend.avatar}"
	puts "Bio: #{friend.bio}"
	puts '-------------------------------'
end

friends.following.each do |friend|
	puts "Name: #{friend.name}"
	puts "Username: #{friend.username}"
	puts "Avatar: #{friend.avatar}"
	puts "Bio: #{friend.bio}"
	puts '-------------------------------'
end
```

**Fetching statistics**

```ruby
stats = Wishlistr::Stats.new '{username}'

puts "Followers: #{stats.followers}"
puts "Following: #{stats.following}"
puts "Items: #{stats.items}"
puts "Views: #{stats.views}"
puts "Links: #{stats.links}"
puts "Clicks: #{stats.clicks}"
```