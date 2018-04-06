require_relative 'listings.rb'

class Host
	attr_accessor :host, :listings
	def initialize(host)
		@host = host
		@listings = []
	end
	def create_listing(host,beds,dates_available, cancellation, guest, reviews,price)
		new_listing = Listing.new(@host,beds,dates_available, cancellation, guest, reviews,price)
		@listings.push(new_listing)
	end
end

zee = Host.new("zee")

puts zee
dates_available = {
	monday:true,
	tuesday:true,
	wednesday: true,
	thursday: true
}
zee.create_listing("danielle",3,dates_available,"strict",{},{},150)
puts zee.listings
puts zee.listings[0]
# puts nyc
# puts nyc.reserve_and_pay("Zee",1,[:monday])
# puts nyc.dates_available