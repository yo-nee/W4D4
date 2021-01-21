class Array

    def my_uniq
        self.uniq
    end

    def two_sum
        pairs = []
        (0...self.length).each do |idx|
            (idx + 1...self.length).each do |idx2|
               pairs << [idx, idx2] if self[idx] + self[idx2] == 0
            end
        end
        pairs        
    end

    def my_transpose
        self.transpose
    end

end

def stock_picker(arr)
    best_days = [] # pair of days 
    best_days << arr.index(arr.min)
    best_days << arr.index(arr.max)
end

####tower of hanoi game ####

class Array
# [ [d1,d2,d3,d4], [], [] ]
    def move(selects) #[0,2] #move from index 0 in the self to index 2 in the self
        from = selects[0]
        to = selects[1]
        top_disc = self[from].pop
        self[to].push(top_disc)
        self
    end
end




