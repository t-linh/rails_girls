require "chatwork"

class ChatworkService
  def initialize
    ChatWork.api_key = "d2780134b4605064614a9e4755d4333c"
  end

  def get_info room_name
    all_room = ChatWork::Room.get
    result = all_room.map{|room| return room if room["name"] == room_name}
  end

  #test room: 83393693
  def send_info room_id
    ChatWork::Message.create(room_id: room_id, body: "[To:2633682] Duong Fram")
  end

  def my_info
    ChatWork::Me.get
  end
end
