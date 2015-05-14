class EmailsController < ApplicationController

	def index

		@contact = Contact.find params[:contact_id]
		@emails = @contact.emails
	end	
end
