require 'yaml'
require 'plaid'

keys = YAML.load_file("config.yml")


Plaid.config do |config|
	config.customer_id = keys["CUSTOMER_ID"]
	config.secret = keys["SECRET"]
end

new_account = Plaid.call.add_account( "wells","pjalexander2", "lem0ndr0p","test@example.com")
puts new_account[:code]


#puts "Enter your wells username:"
#username = gets
#puts "Enter your wells password:"
#password = gets
#puts "Enter email to associate with account"
#email = gets
#
#
#`curl -X POST https://tartan.plaid.com/connect \
#   -d client_id=#{client_id} \
#	 -d secret=#{secret} \
#   -d credentials='{
#       "username":#{username}
