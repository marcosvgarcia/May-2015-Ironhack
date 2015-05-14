class Entry < ActiveRecord::Base

	belongs_to :project
	validates :hours, :minutes, numericality: true
	validates :hours, :minutes, :date, presence: true
	validates_associated :project
end
