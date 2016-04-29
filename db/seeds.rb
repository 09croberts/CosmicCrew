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

User.create(first_name: 'Jacob', last_name: 'Gould-Coates', email: '09jacgou@backwellschool.net',
			dob: '1993-05-24', role: 1,
			password: '12345678', password_confirmation: '12345678')

User.create(first_name: 'Harry', last_name: 'Chapman', email: '09harchap@backwellschool.net',
			dob: '1999-04-21', role: 0,
			password: '12345678', password_confirmation: '12345678')

User.create(first_name: 'Alex', last_name: 'King', email: 'AlexKing@CosmicCrew.com',
			dob: '1987-12-02', role: 2,
			password: '12345678', password_confirmation: '12345678')

#A bunch of images, don't actually have any images yet
Image.create(body_type: "Comet", location: "Nailsea", date: "2016-02-22",
				title: "Comet at night", description: "Didn't expect to catch this tonight",
				attachment: File.open(Rails.root + "pics/UN Comet.jpg"), user_id: 1)

Image.create(body_type: "Galaxy", location: "Nailsea", date: "2016-03-27",
			title: "Long exposure", description: "Came our much better than my first attempt",
			attachment: File.open(Rails.root + "pics/Andromeda.jpg"), user_id: 1)

Image.create(body_type: "Star", location: "Backwell", date: "2016-02-26",
			title: "Stunning corona", description: "NASA eat your heart out",
			attachment: File.open(Rails.root + "pics/High res sun.jpg"), user_id: 2)

Image.create(body_type: "Comet", location: "Backwell", date: "2015-03-10",
			title: "P1s tail", description: "The plume of gases can be clearly seen in the night sky",
			attachment: File.open(Rails.root + "pics/Comet P1.jpg"), user_id: 2)

Image.create(body_type: "Comet", location: "Florida", date: "1986-03-08",
			title: "Halley's Comet", description: "Dug this out from the archives. I can't believe we won't see it again till 1986. Took it when I lived in America",
			attachment: File.open(Rails.root + "pics/halleys-comet-1986.jpg"), user_id: 2)

Image.create(body_type: "Comet", location: "Backwell", date: "2002-10-13",
			title: "153P/Ikeya-Zhang", description: "Also found this in the archives, will taken even longer before it comes back to us!",
			attachment: File.open(Rails.root + "pics/Ikeya Zhang.jpg"), user_id: 2)

Image.create(body_type: "Comet", location: "Weston Super Mare", date: "2016-04-27",
				title: "Milky Way - High res", description: "Our own galaxy at super high resolution",
				attachment: File.open(Rails.root + "pics/Milky Way Wide View.jpg"), user_id: 1)

Image.create(body_type: "Solar Body", location: "Weston Super Mare", date: "2016-04-27",
				title: "Moon and Venus", description: "As they were on the horizon they look really big",
				attachment: File.open(Rails.root + "pics/Moon and Venus.jpg"), user_id: 1)

Image.create(body_type: "Star", location: "Bristol", date: "2016-03-14",
				title: "Render of our star", description: "Whipped this up in photoshop in an hour or so",
				attachment: File.open(Rails.root + "pics/Photoshop sun.jpg"), user_id: 4)

Image.create(body_type: "Constellation", location: "Weston-Super-Mare", date: "2016-02-11",
				title: "Cassiopeia", description: "The big W at Weston",
				attachment: File.open(Rails.root + "pics/cassiopeia.jpg"), user_id: 2)

Image.create(body_type: "Constellation", location: "Weston-Super-Mare", date: "2016-02-11",
				title: "Big Dipper (Ursa Major)", description: "Honestly it looks nothing like a bear",
				attachment: File.open(Rails.root + "pics/Dipper.jpg"), user_id: 2)

Image.create(body_type: "Constellation", location: "Weston-Super-Mare", date: "2016-02-11",
				title: "Orion the hunter", description: "",
				attachment: File.open(Rails.root + "pics/Orion.jpg"), user_id: 2)

Image.create(body_type: "Satellite", location: "Clevedon", date: "2016-03-28",
				title: "Iridum Flare", description: "Brighter than normal",
				attachment: File.open(Rails.root + "pics/Iridium flare.jpg"), user_id: 1)

Image.create(body_type: "Solar Body", location: "Backwell", date: "2016-04-01",
				title: "Mars at perehelion", description: "Not quite hubble, but still very good",
				attachment: File.open(Rails.root + "pics/mars.jpg"), user_id: 1)

Image.create(body_type: "Solar Body", location: "Backwell", date: "2016-04-01",
				title: "Saturn's rings", description: "Had to user an extra powerful lens for this one",
				attachment: File.open(Rails.root + "pics/saturn.png"), user_id: 1)

Image.create(body_type: "Satellite", location: "Bristol", date: "2016-04-15",
				title: "ISS from the ground", description: "It moves so fast it's really hard to track and keep in focus",
				attachment: File.open(Rails.root + "pics/space station.jpg"), user_id: 4)

Image.create(body_type: "Star", location: "Bristol", date: "2016-04-15",
				title: "Proxima Centauri", description: "4 and a half light years is still a really long way :(",
				attachment: File.open(Rails.root + "pics/Proxima centauri.jpg"), user_id: 4)

Image.create(body_type: "Galaxy", location: "Bristol", date: "2016-04-15",
				title: "Sunflower galaxy", description: "Didn't expect to get such good photos",
				attachment: File.open(Rails.root + "pics/sunflower.jpg"), user_id: 4)

Image.create(body_type: "Meteor", location: "Bristol", date: "2015-11-10",
				title: "Meteor entering atmosphere", description: "Unexpectedly saw this and just managed to capture it",
				attachment: File.open(Rails.root + "pics/Unexpected metor.jpg"), user_id: 1)