class AuctionMessageTranslator
  EVENT_TYPES_TO_MESSAGE = {
    "CLOSE" => :auction_closed
  }

  def initialize(listener)
    @listener = listener
  end

  def process_message(message)
    type = event_type(message)
    @listener.send(EVENT_TYPES_TO_MESSAGE[type])
  end

  private

  def event_type(message)
    version, event = message.text.split(";")
    event.split(":")[1].strip
  end
end