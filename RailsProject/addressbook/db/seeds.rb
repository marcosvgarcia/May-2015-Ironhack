

10.times do 
	c = Contact.new	

	aleatory = (0...8).map{ ('A'..'Z').to_a[rand(26)]  }.join
	c.name = "#{aleatory}"

	aleatory = (0...8).map{ ('A'..'Z').to_a[rand(26)]  }.join
	c.address = "#{aleatory}"

	c.save
end

puts 'All contacts succesfully created'


10.times do

	aleatory = (0...8).map{ ('A'..'Z').to_a[rand(26)]  }.join

	rand_contact_id = (rand Contact.count)+1

	c = Contact.find rand_contact_id

	c.phonenumbers.create phonenumber: rand(111111111..777777777)

	c.emails.create email: "#{aleatory}@#{aleatory}"

	c.save
end

puts "Seed done!"