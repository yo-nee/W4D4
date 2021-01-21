require "rspec"
require "deck.rb" 

describe Deck do
    
    describe "#initialize" do
        let(:new_deck) {Deck.new}
        it "should have 52 cards" do 
            expect(new_deck.cards.count).to eq(52)
        end
        it "should be 50% black cards and 50% red cards" do
            expect(new_deck.cards.count{|card|card.color == 'black'}).to eq(26)
        end
        it "it should be 25% of each suit" do
            expect(new_deck.cards.count{|card|card.suit == 'spades'}).to eq(13)
        end
    end

end


