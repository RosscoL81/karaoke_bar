class KaraokeBar

attr_reader :name, :price, :till

def initialize(name, price, till, rooms )
  @name = name
  @price = price
  @till = till
  @rooms = rooms
end

def rooms_count
  return @rooms.length()
end

def guest_enters_bar(karaoke_bar)
  @till += karaoke_bar.price()
end






end
