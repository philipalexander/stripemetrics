require 'yaml'
require 'plaid'

keys = YAML.load_file("config.yml")


Plaid.config do |config|
	config.customer_id = keys["CUSTOMER_ID"]
	config.secret = keys["SECRET"]
end

transactions = Plaid.customer.get_transactions("access_token") 
  puts transactions[:transactions][1]["amount"]