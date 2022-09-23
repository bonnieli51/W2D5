require_relative"item.rb"
class List
    attr_accessor :label
    
    def initialize(label)
        @label = label
        @items = []
    end

    def add_item(title, deadline, description)
        if Item.valid_date?(deadline)
            @items << Item.new(title, deadline, description)
            return true
        else
            return false
        end
    end
end

p my_list = List.new('Groceries')
p my_list.add_item('cheese', '2019-10-32', 'Get American and Feta for good measure.') 