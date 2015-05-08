class Car

    attr_accessor :noise
    @@counter = 0

    def initialize noise
        @noise = noise
        @@counter += 1
    end

    def make_noise
        puts @noise   
    end

    def show_total_cars #Este enseña el valor pero se le olvida.
        puts @@counter
    end

    def get_total_cars #Este sí se queda con el valor, se podría operar con él.
        @@counter
    end

    def self.get_total_cars #Para esta no hace falta crear un coche y preguntarlo. Se pregunta a la clase.
        puts @@counter
    end
end

#audi = Car.new 'Brooom'

#toyota = Car.new 'Ssssss'

#ferrari = Car.new 'BRRRROOOOOOOOOOOM'


#[audi, toyota, ferrari].each do |car|

#    puts car.make_noise
#end

sounds = ["Broom", "Meek", "Nyan"]


cars = sounds.map do |item|
    Car.new(item)
end
   
concatenate_noise = cars.reduce('') do |str, car|
                        str + car.noise
                    end

print concatenate_noise