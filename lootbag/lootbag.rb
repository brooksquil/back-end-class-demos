class LootBag
            
        def initialize(child, toy, child_toy)
            @child = ""
            @toy = ""
            @child_items = ""
            @delivered = false
        end
       
        def add_toy_for_child
            @toy = ""
        end
    
        def remove_toy_for_child
            @child_items.delete
        end
    
        def ls
            @child = ["Suzy"]
        end
    
        def list_toys_per_child
            @child_items = "" 
        end
    
        def delivered
            @delivered = true || false
        end
end