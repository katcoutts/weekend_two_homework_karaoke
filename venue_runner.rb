  require_relative('./guests.rb')
  require_relative('./rooms.rb')
  require_relative('./songs.rb')
  require_relative('./bar.rb')
  require_relative('./bar_items.rb')
  require_relative('./venue.rb')

  class VenueRunner

    def initialize(venue)
      @venue = venue 
    end

    def run_venue()
      puts "Welcome to CodeClan Caraoke. How many people are in your group today?"
      group_size = gets.chomp.to_i
      chosen_room = select_a_room(group_size)

      if chosen_room == nil
        return
      else 
        puts "Now we just need a few details. If there's more than one person in your group please take it in turns to enter your details."
        group_size.times do
          check_in_guest(chosen_room)
        end
      end
      # NOW NEED TO GO ON TO ADD SONGS, SING SONGS AND ORDER FROM THE BAR ALL USING THE METHODS I'VE MADE IN THOSE CLASSES.
    end


    def select_a_room(group_size)
      chosen_room = @venue.assign_room(group_size)
      if chosen_room == nil
        puts "Sorry, we can't accomodate your group just now."
      else 
        puts "Great. We'll put you in #{chosen_room.name}."
      end 
      return chosen_room
    end

    def check_in_guest(chosen_room)
      puts "Please give me your name."
      guest_name = gets.chomp.downcase
      puts "And what is your favourite song #{guest_name}?"
      guest_favourite_song = gets.chomp.downcase
      puts "And, sorry to be rude, but how much cash have you got on you?"
      guest_money = gets.chomp.to_i
      guest = Guest.new(guest_name, guest_favourite_song, guest_money)
      chosen_room.add_guest_as_singer(guest)
    end


  end





pork_scratchings = BarItem.new("Pork Scratchings", 1.50, 50)
vodka_tonic = BarItem.new("Vodka and Tonic", 3.00, 60) 
curly_fries = BarItem.new("Curly Fries", 4.00, 60)
milkshake = BarItem.new("Milkshake", 3.50, 90)
items = [pork_scratchings, vodka_tonic, curly_fries, milkshake]   
@room_1 = Room.new("Room 1", 5)
@room_2 = Room.new("Room 2", 16)
@room_3 = Room.new("Room 3", 8)
@room_4 = Room.new("Room 4", 20)

@rooms = [@room_1, @room_2, @room_3, @room_4]
my_bar = Bar.new(items)
@my_venue = Venue.new(@rooms, my_bar)
karaoke = VenueRunner.new(@my_venue)
karaoke.run_venue()


