class ContactsController < ApplicationController

	def index

        @contacts = Contact.all
    end

    def list_contacts_by_letter 
        @contacts = Contact.links_letter params[:letter]
        render 'index'
    end
end
