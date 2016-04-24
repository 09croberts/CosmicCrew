# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

#3 Users - Admin, member and guest
User.create(first_name: 'Chris', last_name: 'Roberts', email: '09chrrob@backwellschool.net',
			dob: '1997-10-27', role: 2,
			password: '12345678', password_confirmation: '12345678')

User.create(first_name: 'Chris', last_name: 'the Great', email: '09jacgou@backwellschool.net',
			dob: '1993-05-24', role: 1,
			password: '12345678', password_confirmation: '12345678')

User.create(first_name: 'Harry', last_name: 'Chapman', email: '09harchap@backwellschool.net',
			dob: '1999-04-21', role: 0,
			password: '12345678', password_confirmation: '12345678')

#A bunch of images, don't actually have any images yet
Image.create(body_type: "Comet", width: 300, height: 200,
			location: "Nailsea", date: "2016-02-22",
				title: "Title Uno", description: "The first description",
				user_id: 1)

Image.create(body_type: "Meteor", width: 1400, height: 1100,
			location: "Nailsea", date: "2016-03-27",
				title: "Long exposure", description: "The second description",
				user_id: 1)

Image.create(body_type: "Star", width: 400, height: 400,
			location: "Backwell", date: "2016-02-26",
				title: "Stunning corona", description: "A third description that contains a lot more text than the previous description. Also contains an additional sentence, that should lead to text wrapping",
				user_id: 2)

Image.create(body_type: "Comet", width: 500, height: 100,
			location: "Bristol", date: "2015-10-05",
				title: "No scope comet", description: "Used my pro photography skills to capture this comet",
				user_id: 1)

Image.create(body_type: "Galaxy", width: 300, height: 200,
			location: "Clevedon", date: "2016-04-20",
				title: "Andromeda", description: "Best shot of andromeda yet!",
				user_id: 2)

Image.create(body_type: "Galaxy", width: 300, height: 200,
			location: "Clevedon", date: "2016-04-20",
				title: "Andromeda", description: "Best shot of andromeda yet!",
				user_id: 2)

Image.create(body_type: "Galaxy", width: 300, height: 200,
			location: "Clevedon", date: "2016-04-20",
				title: "Andromeda", description: "Best shot of andromeda yet!",
				user_id: 2)

Image.create(body_type: "Galaxy", width: 300, height: 200,
			location: "Clevedon", date: "2016-04-20",
				title: "Andromeda", description: "Best shot of andromeda yet!",
				user_id: 2)

Image.create(body_type: "Galaxy", width: 300, height: 200,
			location: "Clevedon", date: "2016-04-20",
				title: "Andromeda", description: "Best shot of andromeda yet!",
				user_id: 2)

Image.create(body_type: "Galaxy", width: 300, height: 200,
			location: "Clevedon", date: "2016-04-20",
				title: "Andromeda", description: "Best shot of andromeda yet!",
				user_id: 2)

Image.create(body_type: "Galaxy", width: 300, height: 200,
			location: "Clevedon", date: "2016-04-20",
				title: "Andromeda", description: "Best shot of andromeda yet!",
				user_id: 2)

Image.create(body_type: "Galaxy", width: 300, height: 200,
			location: "Clevedon", date: "2016-04-20",
				title: "Andromeda", description: "Best shot of andromeda yet!",
				user_id: 2)

Image.create(body_type: "Galaxy", width: 300, height: 200,
			location: "Clevedon", date: "2016-04-20",
				title: "Andromeda", description: "Best shot of andromeda yet!",
				user_id: 2)

Image.create(body_type: "Galaxy", width: 300, height: 200,
			location: "Clevedon", date: "2016-04-20",
				title: "Andromeda", description: "Best shot of andromeda yet!",
				user_id: 2)

Image.create(body_type: "Galaxy", width: 300, height: 200,
			location: "Clevedon", date: "2016-04-20",
				title: "Andromeda", description: "Best shot of andromeda yet!",
				user_id: 2)

Image.create(body_type: "Galaxy", width: 300, height: 200,
			location: "Clevedon", date: "2016-04-20",
				title: "Andromeda", description: "Best shot of andromeda yet!",
				user_id: 2)

Image.create(body_type: "Galaxy", width: 300, height: 200,
			location: "Clevedon", date: "2016-04-20",
				title: "Second page test", description: "Best shot of andromeda yet!",
				user_id: 2)

Image.create(body_type: "Galaxy", width: 300, height: 200,
			location: "Clevedon", date: "2016-04-20",
				title: "Andromeda", description: "Best shot of andromeda yet!",
				user_id: 2)

Image.create(body_type: "Galaxy", width: 300, height: 200,
			location: "Clevedon", date: "2016-04-20",
				title: "Third page test", description: "Best shot of andromeda yet!",
				user_id: 2)