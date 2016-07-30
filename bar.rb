class Bar

attr_reader :items, :till

def initialize(items, till=0)
  @items = items
  @till = till
end

def sell_item (guest, item)
  if guest.money >= item.price
    guest.give_money(item.price)
    @till += item.price
    item.quantity -= 1  
  else
    return "Sorry, you don't have enough money."
  end
end



end
