class Project < ActiveRecord::Base

    has_many :entries
    validates :name, presence: true
    validates :name, uniqueness: true
    validates :name, length: {in: 1..30}
    validates :name, format: { with: /\A[a-zA-Z0-9\s]+\z/ }

	def self.iron_find param
    	Project.where(id: param).first
    end

=begin
Se ejecuta cuando pones en pry 
Project.iron_find 2
=end

    def self.clean_old 

        date = Time.now.midnight - 1.week
        Project.where("created_at<?", date).destroy_all
    end

=begin ALTERNATIVA AL EJERCICIO DE DESTRUIR TODOS LOS ARCHIVOS ANTERIORES A UNA SEMANA
    def self.clean_old
        projects = Project.where("created_at < ?", Date.today - 1.week)
        projects.destroy_all
    end
=end

    def self.last_created_projects(n)
    	Project.order("created_at DESC").limit(n)
    end

    def total_hours_in_month month, year

        all_entries = self.entries
        all_selected_entries = all_entries.select do |entry|
            entry.date.month == month && entry.date.year == year
        end

        all_selected_entries.reduce(0){|sum, entry| sum+ entry.hours}
    end
end
