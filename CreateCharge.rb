# Class to create a charge in stripe
require 'stripe'
class Charge
	attr_accessor :charge, :amount, :currency
	
	def initialize()
		@amount = gets.chomp
		@currency = "USD"
		Stripe.api_key = "sk_test_4VPBvbfPQ44Ft2rvc7XOzm2X"
	end

	def create_charge()

		@charge = Stripe::Charge.create(
									:amount   => @amount,
									:currency => @currency
							)
	end
	
end

our_charge = Charge.new()
our_charge.create_charge
puts our_charge.charge
