module ApplicationHelper

	def flash_message

		if flash[:alert]
			flash[:alert]
		else flash[:notice]
			flash[:notice]
		end
	end
end
