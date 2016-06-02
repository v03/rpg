class RPDuck
	include Cinch::Plugin
	listen_to :channel, :method => :channel

	def channel(m)
		if m.message.match(/\+new/)
			char = Character.new(m.user.nick)
			m.reply("Welcome #{m.user.nick}, a level #{@level} #{char.type}")
		end
	end
end
class Character

	attr_reader :name
	attr_reader :type
	attr_reader :level
	attr_reader :stats
	attr_reader :experience
	attr_reader :inventory
	def initialize(name)
		@type = ["Jew", "Muslim", "Feminist", "Vegan", "Bureaucrat"].sample
		@name = name
		@level = 1
		@experience = 0
		@stats = {
			"Strength" => 60,
			"Dexterity" => 60,
			"Vitality" => 10,
			"Energy" => 10,
			"Damage" => 5,
			"Fire Damage" => 0,
			"Cold Damage" => 0,
			"Lightning Damage" => 0,
			"Poison Damage" => 0,
			"Defense" => 5,
			"Attack Rating" => 5,
			"Resist Cold" => -10,
			"Resist Fire" => -10,
			"Resist Lightning" => -10,
			"Resist Poison" => -10,
		}
		@inventory = {}
		if File.exists?("char/#{@name}.data")
			load
		end
	end
	def save()
		struct = {
			:type => @type,
			:level => @level,
			:experience => @experience,
			:stats => @stats,
			:inventory => @inventory,
			:name => @name
		}
		File.open("char/#{@name}.data", "wb") do |fp|
			fp.write(::Marshal.dump(struct))
		end
	end
	def load()
		struct = ::Marshal.load(File.read("char/#{@name}.data"))
		@type = struct[:type]
		@level = struct[:level]
		@experience = struct[:experience]
		@stats = struct[:stats]
		@inventory = struct[:inventory]
		@name = struct[:name]


	end
	def give_item(item)
		#@inventory[item.base_type] = item
		if @stats["Strength"] < item.get_str_req
			return "You found #{item.prefix_name} #{item.base_name} of #{item.suffix_name}. But it is too heavy for you! You toss it aside."
		end
		if @stats["Dexterity"] < item.get_dex_req
			return "You found #{item.prefix_name} #{item.base_name} of #{item.suffix_name}. But it requires more dexterity than you have. You toss it aside."
		end

		if @level < item.get_lvl_req
			return "You found #{item.prefix_name} #{item.base_name} of #{item.suffix_name}. But it requires a higher level (#{item.get_lvl_req}) than you have!"
		end

		unless @inventory[item.base_type].nil?
			eq_item = @inventory[item.base_type]
			old_stats = eq_item.get_value
			new_stats = item.get_value
			if old_stats > new_stats
				return "#{item.prefix_name} #{item.base_name} of #{item.suffix_name} looks promising... but your #{eq_item.prefix_name} #{eq_item.base_name} of #{eq_item.suffix_name} is better."
			end
			@stats["Defense"] -= eq_item.get_base_defense
			@stats["Damage"] -= eq_item.get_base_damage
			@stats[eq_item.prefix_effect] -= eq_item.prefix_value
			@stats[eq_item.suffix_effect] -= eq_item.suffix_value

		end
		@inventory[item.base_type] = item
		@stats[item.prefix_effect] += item.prefix_value
		@stats[item.suffix_effect] += item.suffix_value
		@stats["Defense"] += item.get_base_defense
		@stats["Damage"] += item.get_base_damage
		save
		return "You found #{item.prefix_name} #{item.base_name} of #{item.suffix_name} (dmg: #{item.get_base_damage} | def: #{item.get_base_defense}) with magic enchanting: #{item.prefix_value} #{item.prefix_effect} | #{item.suffix_value} #{item.suffix_effect} and equip it immediately."

	end

	def give_exp(experience)
		@experience += experience
	end

	def stats
		return {
			:level => @level,
			:experience => @experience,
			:stats => @stats
		}
	end
end

class Item
	include ItemCollection
	attr_reader :prefix_name
	attr_reader :suffix_name
	attr_reader :prefix_value
	attr_reader :suffix_value
	attr_reader :prefix_effect
	attr_reader :suffix_effect

	attr_reader :base_name
	attr_reader :base_type
	attr_reader :base_value
	def initialize

		@prefix_effect = prefix.keys.sample
		@suffix_effect = suffix.keys.sample
		@base_type = base.keys.sample

		@prefix_name = prefix[@prefix_effect].keys.sample
		@suffix_name = suffix[@suffix_effect].keys.sample
		@base_name = base[@base_type].keys.sample

		@prefix_value = rand(*prefix[@prefix_effect][@prefix_name])
		@suffix_value = rand(*suffix[@suffix_effect][@suffix_name])
		@base_value = base[@base_type][@base_name]
	end

	def get_dex_req()
		req = @base_value["Dex.Req"]
		return 0 if req.nil?
		return rand(*req)
	end

	def get_str_req()
		req = @base_value["Str.Req"]
		return 0 if req.nil?
		return rand(*req)
	end

	def get_lvl_req()
		req = @base_value["Lvl.Req"]
		return 0 if req.nil?
		return req if req.class == Fixnum
		@base_value["Lvl.Req"] = rand(*req)
		return @base_value["Lvl.Req"]
	end

	def get_base_damage()
		return 0 if @base_value["Damage"].nil?
		return rand(*@base_value["Damage"])
	end
	def get_base_defense()
		return 0 if @base_value["Defense"].nil?
		return rand(*@base_value["Defense"])
	end

	def get_avg_damage()
		return 0 if @base_value["Damage"].nil?
		tmp = @base_value["Damage"].first
		return (tmp.min + tmp.max) / 2
	end

	def get_avg_defense()
		return 0 if @base_value["Defense"].nil?
		tmp = @base_value["Defense"].first
		return (tmp.min + tmp.max) / 2
	end

	def get_value()
		return [get_avg_defense*10, get_avg_damage*10, @prefix_value, @suffix_value].inject(:+)
	end
end
