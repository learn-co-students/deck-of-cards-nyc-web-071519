require "pry"

class Deck
    #@@all_cards = []

    def initialize
        @all_cards = create_cards
    end

    def create_cards
        rank_array = ["A", "2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K"]
        suit_array = ["Hearts", "Clubs", "Diamonds", "Spades"]
        suit_array.flat_map do |suit|
            rank_array.map do |rank|
                Card.new(suit, rank)
            end 
        end
    end

    def cards
        @all_cards
    end

    def choose_card
        cards.delete_at(rand(cards.length))
    end
end

class Card
    attr_reader :suit, :rank
    @@all = []

    def initialize(suit, rank) 
        @rank = rank
        @suit = suit
        @@all << self
    end

    def self.all
        @@all
    end
end
