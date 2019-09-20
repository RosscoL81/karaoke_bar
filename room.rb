class Room

attr_reader :name, :capacity

def initialize(name, capacity, songs_list)
  @name = name
  @capacity = capacity
  @songs_list = songs_list
end

def song_count
  return @songs_list.length()
end

end
