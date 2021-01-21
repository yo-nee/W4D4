require "rspec"
require "towers_of_hanoi.rb" 


describe "#my_uniq" do 
    subject(:array) {[1,2,1,3,3]}
    it "removes duplicates from an array" do
    expect(array.my_uniq).to eq([1,2,3])
    end
end

describe "#two_sum" do
    subject(:array) { [-1,0,2,-2,1] }
    it "finds all pairs where elements at those positions sum to zero" do 
        expect(array.two_sum).to eq([[0,4], [2,3]])
    end
end

describe "#my_transpose" do
    subject(:array) {[[0,1,2], [3,4,5], [6,7,8] ]}
    it "will transpose the 2D - array" do
        expect(array.my_transpose).to eq([[0,3,6], [1,4,7], [2,5,8]])
    end
end

describe "#stock_picker" do
    subject(:array) {[1,2,3,4,5]} # prices
    it "will output the most profitable pair of days to buy and sell" do
    expect(stock_picker(array)).to eq([0,4])
    end
end

####tower of hanoi game ####
# Keep three arrays, which represents the piles of discs. 
# [ [d1,d2,d3,d4], [], [] ]
# Pick a representation of the discs to store in the arrays; maybe just a number representing their size. 
# Don't worry too much about making the user interface pretty.
# In a loop, prompt the user (using gets) and ask what pile to select a disc from, and where to put it.
# After each move, check to see if they have succeeded in moving all the discs, to the final pile. If so, they win!
# Note: don't worry about testing the UI. Testing console I/O is tricky (don't bother checking gets or puts). Focus on:
# #move
# #won?

describe "#move" do
    subject(:array) {[["d1","d2","d3","d4"],[],[]]}
    it "moves the last disc in an array to another array" do
        expect(array.move([0,2])).to eq([["d1","d2","d3"],[],["d4"]])
    end

    it "raises an error when pulling from empty array" do
        expect {array.move([1,2])}.to raise_error("cant move from an empty array")
    end
end

