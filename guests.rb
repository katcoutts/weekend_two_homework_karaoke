class Guest

  attr_reader :name, :favourite_song, :money

  def initialize(input_name, input_favourite_song, input_money)
    @name = input_name
    @favourite_song = input_favourite_song
    @money = input_money
  end

  def give_money(how_much)
    if @money >= how_much
      @money -= how_much
    end
  end 

  def buy_a_bar_item(price)
    if @money >= price
      @money -= price
    end
  end



end