# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

admin = Admin.create(
	first_name:            'Admin',
	last_name:             'User',
	email:                 'admin@user.com',
	password:              '12345678',
	password_confirmation: '12345678'
	)

attendee = Attendee.create(
	first_name:            'Attendee',
	last_name:             'User',
	email:                 'attendee@user.com',
	phone:                 '5553211234',
	address:               '123 Long St.',
	city:                  'Orlando',
	state:                 'Florida',
	zip:                   '32825',
	industry:              'Software',
	pull_out:              'Stand up desk',
	concerns:              'Beach front property'
	)

vendor = Vendor.create(
	first_name:            'Vendor',
	last_name:             'User',
	vendor_name:           'ProtectorAll',
	email:                 'vendor@user.com',
	phone:                 '5557209876',
	address:               '321 Small St.',
	city:                  'Orlando',
	state:                 'Florida',
	zip:                   '32825',
	comments:              'Looking forward to the event',
	speak_topic:           true,
	speak_topic_ceu:       true
	)
