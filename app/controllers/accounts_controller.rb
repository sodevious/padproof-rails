class AccountsController < ApplicationController
	def index
		@signature = Recurly.js.sign(:transaction => { :amount_in_cents => 50_00, :currency => 'USD' })
		
		respond_to do |format|
			format.html
		end
	end
	
	def list_accounts
		Recurly::Account.find_each do |account|
			puts "Account: #{account.inspect}"
		end
	end

	def get_account
		begin
			account = Recurly::Account.find '117'
			puts "Account: #{account.inspect}"
		rescue Recurly::Account::NotFound => e
			puts e.message
		end
	end

	def success
		@result = Recurly.js.fetch params[:recurly_token]

		respond_to do |format|
			format.html
		end
	end
end
