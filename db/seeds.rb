# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Delete all datafirst
Post.all.delete_all

# create some seed posts
Post.create([
	{
		title: 			"Hello World",
		author: 		"Todd Killick",
		publication: 	"The Guardian",
		url: 			"http://theguardian.com/uk/technology",
		pull_quote:   	"Dicta dolor voluptatem alias inventore",
		body: 			"Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dicta dolor voluptatem alias inventore, aperiam explicabo nisi? Error, exercitationem quod laboriosam atque soluta quae vero, earum cumque tenetur facere animi fugit."
	}, 
	{
		title: 			"Learning",
		author: 		"Sam Billingham",
		publication: 	"The Steer Blog",
		url: 			"http://steer.me/blog",
		pull_quote:   	"Lorem ipsum dolor sit amet",
		body: 			"Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dicta dolor voluptatem alias inventore, aperiam explicabo nisi? Error, exercitationem quod laboriosam atque soluta quae vero, earum cumque tenetur facere animi fugit."
	}, 
	{
		title: 			"First Class Ruby",
		author: 		"Adam West",
		publication: 	"Another Publication",
		url: 			"http://steer.me/blog",
		pull_quote:   	"aperiam explicabo",
		body: 			"Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dicta dolor voluptatem alias inventore, aperiam explicabo nisi? Error, exercitationem quod laboriosam atque soluta quae vero, earum cumque tenetur facere animi fugit."
	}, 
])