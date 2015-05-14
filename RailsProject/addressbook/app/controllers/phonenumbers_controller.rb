class PhonenumbersController < ApplicationController

	def index

		@contact = Contact.find params[:contact_id]
		@phonenumbers = @contact.phonenumbers
	end	
end
