class FormController < ApplicationController
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

	end
end
