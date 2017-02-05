# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Add some test users (skip email verification)
user = User.create({email: 'user@somedomain.com', name: 'User', password: 'password', password_confirmation: 'password'})
dm_user = User.create({email: 'dm@somedomain.com', name: 'DM', password: 'password', password_confirmation: 'password'})
player_user = User.create({email: 'player@somedomain.com', name: 'Player', password: 'password', password_confirmation: 'password'})

# Add a test campaign
first_campaign = Campaign.create(user: dm_user, name: 'First Campaign', description: 'A sample campaign')

# Add some test races
human = Race.create(name: 'Human', description: 'Pretty normal', campaign: first_campaign)

# Add some test classes
warrior = Category.create(name: 'Warrior', description: 'Goes on a rampage', primary_attribute: 'str', secondary_attribute: 'dex', campaign: first_campaign)

# Add a test character
Character.create(name: 'Bob', race: human, category: warrior, alignment1: 'neutral', alignment2: 'neutral', level: 1,
str_level: 0, dex_level: 0, con_level: 0, per_level: 0, int_level: 0, wis_level: 0, chr_level: 0, stl_level: 0, max_hp: 10, cur_hp: 10, armor_class: 10,
user: player_user, campaign: first_campaign)