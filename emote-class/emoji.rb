class Emoji
	def initialize(str)
		@sentence = str
	end

	def sad
		puts "#{@sentence} 😞"
	end

	def happy
		puts "#{@sentence} 😁"
	end

	def angry
		puts "#{@sentence} 😡✊"
	end

	def laughing
		puts "#{@sentence} 🤣"
	end

	def original
	puts @sentence 
	end
end

words = Emoji.new("I hate you sooo muchchchchhchchchc")

puts words.angry

moe_words = Emoji.new("You are sooo FUNNY...")
puts moe_words.laughing

all_talk = Emoji.new("promises promises.....you are disappointment")
puts all_talk.sad

