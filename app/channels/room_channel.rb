class RoomChannel < ApplicationCable::Channel
  def subscribed
    #5.times { puts '***test***' }
    stream_from "room_channel"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
