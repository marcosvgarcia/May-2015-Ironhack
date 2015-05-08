class Car

	IO.write('Car.txt', 0)

    def initialize noise
        @noise = noise
        car_counter = IO.read('Car.txt').to_i
        car_counter += 1
        IO.write('Car.txt', car_counter) #Almacena en el archivo externo
    end
    def make_noise
        puts @noise
    end
    def show_total_cars #Este enseña el valor pero se le olvida.
        puts IO.read('Car.txt') #lee archivo externo
    end
    def get_total_cars #Este sí se queda con el valor, se podría operar con él.
        IO.read('Car.txt')
    end
    def self.get_total_cars #Para esta no hace falta crear un coche y preguntarlo. Se pregunta a la clase.
    	puts IO.read('Car.txt') 
    end
end

class RacingCar < Car

	def initialize
		@noise = 'BRRRROOOOOOOOOOOM'
	end
end

audi = Car.new 'Brooom'

toyota = Car.new 'Ssssss'

ferrari = RacingCar.new 

ferrari.make_noise

Car.get_total_cars


