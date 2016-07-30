require_relative('./guests.rb')
require_relative('./rooms.rb')
require_relative('./songs.rb')
require_relative('./bar.rb')
require_relative('./bar_items.rb')

class VenueRunner

  attr_reader :room, :bar

  def initialize(rooms, bar)
    @room = rooms
    @bar = bar
  end

  def run_venue()
    check_in
    while !false do
    song_selector
    end 
    puts "Goodbye."
  end

  def check_in()
    puts "Welcome to CodeClan Caraoke. To check-in please enter your name."
      guest_name = gets.chomp
      puts "Great. And what's your favourite song #{guest_name}?"
      guest_favourite_song = gets.chomp
      puts "And, sorry to be rude, but how much cash have you got?"
      guest_money = gets.chomp.to_i
      @guest = Guest.new(guest_name, guest_favourite_song, guest_money)
      @room.add_guest_as_singer(@guest)
      # this bit isn't properly working. It will tell you you haven't got enough money if you have less than £5 and it doesn't carry on but instead of just coming out of the program you get an error message.
      if @room.room_singers.length > 0
      puts "Great, we've checked you in to #{@room.name} and you've given us the £5 entry fee. You've got £#{@guest.money} left to spend with us tonight, so thanks."
      else 
      puts "Sorry, you don't have enought money to check in."
      return false
      end
   end

  def song_selector
    puts "Ok #{@guest.name}. Give me the title of the song you want to sing."
    title = gets.chomp
    puts "And who is that by?"
    artist = gets.chomp
    song = Song.new(title, artist)
    @room.add_song(song)
    puts "Press any key to start your song."
    gets
    @room.play_a_song(song)
    puts "Awesome singing. To pick a new song enter 1, to exit enter 2."
    answer = gets.chomp
    # THIS ISN'T WORKING YET IT JUST KEEPS GOING ROUND SELECTING MORE SONGS
    if answer == "1" 
      song_selector
    else
      return
    end
  end



end

pork_scratchings = BarItem.new("Pork Scratchings", 1.50, 50)
vodka_tonic = BarItem.new("Vodka and Tonic", 3.00, 60) 
curly_fries = BarItem.new("Curly Fries", 4.00, 60)
milkshake = BarItem.new("Milkshake", 3.50, 90)
items = [pork_scratchings, vodka_tonic, curly_fries, milkshake]   
room1 = Room.new("Room 1", 6)
bar = Bar.new(items)
karaoke = VenueRunner.new( room1, bar )
karaoke.run_venue()


# Only made a start on thinking about the process of ordering from the bar.
# puts "Would you like us to bring you anything from the bar? y/n"
#   answer = gets.chomp
#   if answer != "y" || n
#     puts "Please press y or n."
#   elsif answer == "y"
#     puts "Great. Here's our menu."
#     puts "#{bar.items}"
#     puts "Please enter what you'd like."
#     order = gets.chomp