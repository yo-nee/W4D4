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
    best_days << arr.min
    best_days << arr.max
end





