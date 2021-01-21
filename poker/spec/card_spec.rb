require "rspec"
require "card.rb" 

describe Card do
    let(:deck) {double("deck")}
    
    describe "#initialize" do
        subject(:card) {Card.new(7, "black", "spade")}
        it "should set card_num to it's num argument" do
            expect(card.num).to eq(7)
        end
        it "should set card_color to it's color argument" do
            expect(card.color).to eq("black")
        end
        it "should set card_suit to it's suit argument" do
            expect(card.suit).to eq("spade")
        end
    end









end