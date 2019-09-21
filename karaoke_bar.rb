class KaraokeBar

attr_reader :name, :till

def initialize(name, till, rooms )
  @name = name
  @till = till
  @rooms = rooms
end

def rooms_count
  return @rooms.length()
end





end
