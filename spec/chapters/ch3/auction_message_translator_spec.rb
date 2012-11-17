require 'spec_helper'

describe AuctionMessageTranslator do
  before do 
    @listener = double('AuctionMessageListener')
    @listener.stub(:auction_closed)
    @translator = AuctionMessageTranslator.new(@listener)
  end

  context "when an Auction Closed message is received" do
    let(:message) { Message.new("SOLVersion: 1.1; Event: CLOSE;") }

    it "notifies the listener of the Auction Closed event" do
      @listener.should_receive(:auction_closed)
      @translator.process_message(message)
    end
  end
end