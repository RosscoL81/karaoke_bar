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

end
