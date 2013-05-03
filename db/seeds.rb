# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Episode.create(title: "Caching With Instance Variables", description: "Store the results...")
Episode.create(title: "Dynamic find_by Methods", description: "Shorten simple find...")

Tag.create(name: "active-record")
Tag.create(name: "performance")
Tag.create(name: "caching")
Tag.create(name: "controllers")

Tagging.create(episode_id: 1, tag_id: 2)
Tagging.create(episode_id: 1, tag_id: 3)