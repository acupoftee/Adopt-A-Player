# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database
# with its default values.
# The data can then be loaded with the rails db:seed (or created alongside the
# db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Hero.transaction do
#   CSV.foreach(Rails.root + 'lib/seeds/overwatch_heroes.csv',
#               headers: true,
#               header_converters: ->(h) { h.downcase.to_sym }) do |hero_row|
#     hero = hero_row.to_hash
#     Hero.create hero unless Hero.exists? hero
#   end
# end

require 'csv'

csv_text = File.read(Rails.root.join('lib', 'seeds', 'overwatch_heroes.csv'))
csv = CSV.parse(csv_text, headers: true, encoding: 'ISO-8859-1')
csv.each do |row|
  puts row.to_hash
  hero = Hero.new
  hero.name = row['name']
  hero.hero_class = row['hero_class']
  hero.save
  puts "#{hero.class} hero #{hero.name} saved"
end

puts "There are now #{Hero.count} heroes saved."
