class Listing 
	attr_accessor :host,:beds,:dates_available,:cancellation,:guest,:reviews,:price
	def initialize(host,beds,dates_available, cancellation, guest, reviews,price)
		@host = host
		@beds = beds
		@dates_available = dates_available
		@cancellation = "strict"
		@guest = {}
		@reviews = {}
		@price = price
	end
	
	def reserve_and_pay(name,number_of_nights,dates_stay)
		@guest[:name] = dates_stay
		dates_stay.each do |date|
			@dates_available[:"#{date}"] = false
		end
		@price * number_of_nights
	end

	def leave_review(guest_name,review_text)
		@reviews[:guest_name] = review_text
	end
end

