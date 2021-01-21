class Deck

    attr_reader :cards
    def initialize
        @cards = []
        populate_deck
    end

    def populate_deck
        (1..13).each do |num|
            @cards << Card.new(num, 'black', 'clubs')
        end
        (1..13).each do |num|
            @cards << Card.new(num, 'black', 'spades')
        end
        (1..13).each do |num|
            @cards << Card.new(num, 'red', 'diamond')
        end
        (1..13).each do |num|
            @cards << Card.new(num, 'red', 'hearts')
        end
    end


end