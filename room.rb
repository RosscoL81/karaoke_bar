class Room

attr_reader :name, :capacity

def initialize(name, capacity, songs_list, guest_list)
  @name = name
  @capacity = capacity
  @songs_list = songs_list
  @guest_list = guest_list
end

def song_count
  return @songs_list.length()
end

def guests_count
  return @guest_list.length()
end

def add_guest(guest)
  return @guest_list.push(guest)
end

def guest_out(guest)
  return @guest_list.delete(guest)
end

def add_song(song)
  return @songs_list.push(song)
end

def room_full?(room)
  return @guest_list.length()>=room.capacity()
end


  #
  def room_at_capacity(room, guest)
    return if room_full?(room)
    room.add_guest(guest)
  end

end
