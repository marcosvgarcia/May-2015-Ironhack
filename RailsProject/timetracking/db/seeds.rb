

10.times do |aleatory|

	aleatory = (0...8).map{ ('A'..'Z').to_a[rand(26)]  }.join
	
	Project.create name: "#{aleatory}", description: "#{aleatory}"
end

puts 'All projects succesfully created'


10.times do

	rand_project_id = (rand Project.count)+1

	p = Project.find rand_project_id

	p.entries.create hours: rand(24), minutes: rand(60), date: (Date.today - rand(365).day)

	p.save
end

puts "Seed done!"
