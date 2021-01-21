require "rspec"
require "towers_of_hanoi.rb" 


describe "#my_uniq" do 
    subject(:array) {[1,2,1,3,3] }
    it "removes duplicates from an array" do
    expect(array.my_uniq).to eq([1,2,3])
    end
end



#[1, 2, 1, 3, 3].uniq # => [1, 2, 3]