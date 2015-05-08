require 'pry'

class Game
    
    def initialize character
        @rooms = []
        @character = character
    end

    def add_room room
        @rooms << room
    end

    def play
    
        playing = true
    
        while playing
    
            show_room @character.position
            show_room_exits @character.position
            puts 'Chose your next movement:'
            puts '>'
            order_player = gets.chomp.upcase.to_sym
            current_room = get_room @character.position
    
            if current_room.paths.keys.include? order_player

                id = current_room.paths[order_player]
                @character.position = id
            elsif order_player == :INVENTORY
                
                show_inventory
            elsif order_player == :PICK
                
                pick_inventory current_room.adjuvants_objects
            elsif order_player == :DROP 
                
                drop_inventory             
            else
                
                puts 'Wrong direction. Choose another one:'
                puts '>'
            end
        end
    end
    
    def get_room id
        room = @rooms.find{|room| id == room.id}
    end
    
    def show_room id
        room = @rooms.find{|room| id == room.id}
        puts room.messages
    end 
    
    def show_room_exits id
        room = @rooms.find{|room| id == room.id}
        puts room.paths.keys
    end

    def show_inventory

        if @character.inventory == []
            puts 'Your inventory is empty'
        else
            puts 'Your inventory is: '
            @character.inventory.each do |i|
                puts i
            end
        end
    end

    def pick_inventory adjuvants_objects

        @character.inventory.push adjuvants_objects
        puts "You have picked a #{adjuvants_objects[0]}"
    end

    def drop_inventory adjuvants_objects

        @character.inventory.delete adjuvants_objects
        puts 'You have droped #{adjuvants_objects}'
    end
end

class Character
   
   attr_accessor :position, :inventory
   
   def initialize position
      
       @position = position
       @inventory = []
   end
end

class Room
   
   attr_accessor :id, :paths, :messages, :adjuvants_objects
   
   def initialize id, paths, messages, adjuvants_objects=[]
       @id = id
       @paths = paths
       @messages = messages
       @adjuvants_objects = adjuvants_objects
   end
end



room1 = Room.new(1, { :S => 2}, 'You are in the room 1. There are a sword on the floor', ['sword'])
room2 = Room.new(2, { :N => 1, :S => 5}, 'You are in the room 2')
room3 = Room.new(3, { :S => 8, :E => 4}, 'You are in the room 3')
room4 = Room.new(4, { :S => 9, :E => 5, :W => 3}, 'You are in the room 4')
room5 = Room.new(5, { :N => 2, :S => 10, :E => 6, :W => 4}, 'You are in the room 5')
room6 = Room.new(6, { :S => 11, :E => 7, :W => 5}, 'You are in the room 6')
room7 = Room.new(7, { :S => 12, :W => 6}, 'You are in the room 7')
room8 = Room.new(8, { :N => 3, :E => 9}, 'You are in the room 8')
room9 = Room.new(9, { :N => 4, :E => 10, :W => 8}, 'You are in the room 9')
room10 = Room.new(10, { :N => 5, :S => 13, :E => 11, :W => 9}, 'You are in the room 10')
room11 = Room.new(11, { :N => 6, :E => 12, :W => 10}, 'You are in the room 11')
room12= Room.new(12, { :N => 7, :W => 11}, 'You are in the room 12')
room13= Room.new(13, { :N => 10, :S => 14}, 'You are in the room 13')
room14= Room.new(14, { :N => 13}, 'You are in the room 14, take the flag and go to the next battle, YOU WIN!!')

player = Character.new 1

first_game = Game.new player

first_game.add_room room1
first_game.add_room room2
first_game.add_room room3
first_game.add_room room4
first_game.add_room room5
first_game.add_room room6
first_game.add_room room7
first_game.add_room room8
first_game.add_room room9
first_game.add_room room10
first_game.add_room room11
first_game.add_room room12
first_game.add_room room13
first_game.add_room room14

first_game.play