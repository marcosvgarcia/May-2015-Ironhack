class Contact < ActiveRecord::Base

	has_many :phonenumbers
	has_many :emails

	def self.links_letter letter
		
		Contact.where("name like ?", letter.to_s + "%")
	end
end
