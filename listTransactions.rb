require 'yaml'
require 'plaid'

keys = YAML.load_file("config.yml")


Plaid.config do |config|
	config.customer_id = keys["CUSTOMER_ID"]
	config.secret = keys["SECRET"]
end

transactions = Plaid.customer.get_transactions("WyI1M2U1NDZiNGYwYzUzZTMyNDQ1NWI1MjQiLCI1M2U5ODJmNDUyM2Y0ZGJmNzI5YjQ5YTIiLCI1M2U5ODJmZTUyM2Y0ZGJmNzI5YjQ5YTMiXQ==") 
  puts transactions[:transactions][1]["amount"]