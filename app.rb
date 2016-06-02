require "bundler"
require "yaml"
Bundler.require
require "./item_def.rb"
require "./rpduck.rb"


bot = Cinch::Bot.new do
	configure do |c|
		c.nick = "RPDUCK"
		c.server = "localhost"
		c.port = 6697
		c.ssl.use = true
		c.ssl.verify = false
		c.channels = ['#']
		c.verbose = false
		c.plugins.plugins = [RPDuck]
	end

end
Thread.new {
	bot.start
}
Pry.start(bot)
