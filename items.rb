require "bundler"
Bundler.require
require "./item_def.rb"
require "./rpduck.rb"

character = Character.new("moo")
p character.inventory

5.times do |i|
	puts character.give_item Item.new
end

#puts "#{item.prefix_name} #{item.base_name} of the #{item.suffix_name} (#{item.base_value}  #{item.prefix_effect}: #{item.prefix_value} | #{item.suffix_effect}: #{item.suffix_value})"
