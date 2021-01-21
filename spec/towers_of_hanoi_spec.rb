require "rspec"
require "towers_of_hanoi.rb" 


describe "#my_uniq" do 
    subject(:array) {[1,2,1,3,3] }
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




#[1, 2, 1, 3, 3].uniq # => [1, 2, 3]