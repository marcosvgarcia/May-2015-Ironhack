class RedirectionerController < ApplicationController

	def index
		@urls = NewUrl.all
	end

	def redirect
		
		begin
			@url_to = NewUrl.find params[:id]
			@url_to.visit += 1
			@url_to.save
			redirect_to @url_to.url
		rescue ActiveRecord::RecordNotFound
			render 'no_url_found'
		end
	end
	
	def most_visited_pages
		@urls = NewUrl.all
		@urls.visit.where()
	end
end
