
class Item 
    attr_reader :deadline
    attr_accessor :title, :description
    def self.valid_date?(str)
        nums = str.split("-") #[2022,02,23]
        if nums[0].length == 4 && ("01".."12").to_a.include?(nums[1]) && ("01".."31").to_a.include?(nums[2])
            return true
        else 
            return false
        end
    end

    def initialize(title, deadline, description)
        @title = title 
        @description = description
        if Item.valid_date?(deadline)
            @deadline = deadline
        else
            raise "deadline is not valid"
        end
    end

    def deadline=(deadline)
        if Item.valid_date?deadline
            @deadline = deadline
        else
            raise "deadline is not valid"
        end
    end
end 