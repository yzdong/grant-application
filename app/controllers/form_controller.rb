class FormController < ApplicationController
	require 'savon'

	def index
		@title = "Business Grant Portal"
		@apply = "Apply here"
	end

	def new
		@title = "New application"
		@grant_options = Grant.all 
	end

	def getfields
		@title = "Enter the relevant information"
		@selected_fields = []
		Grant.all.each do |g| 
			if (params[g.name] != nil) 
				g.fields.each do |f| 
					@selected_fields << f
				end
			end
		end
		@selected_fields = @selected_fields.uniq

		@application = Application.new
	end

	def complete 
		@fields = []
		client = Savon.client({wsdl: 'https://gds.appiancloud.com/suite/webservice/processmodel/TestWebService?WSDL', ssl_verify_mode: :none}) 
		#client.call(:start, message: {username: "webservice", password: "password1", requestID: "1234", title: "Hello", description: "this is good"})
		message_hash = {username: "webservice", password:"password1"}

		params.each do |key, value| 
			message_hash[key.to_sym] = value 
		end

		client.call(:start, message: message_hash); 

	end
end