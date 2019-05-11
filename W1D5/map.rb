
# Remember, a map stores information in key-value pairs, where the keys are always unique. When implemented with arrays, a map might look something like this: my_map = [[k1, v1], [k2, v2], [k3, v2], ...].

# Our Map class should have the following instance methods: set(key, value), get(key), delete(key), show. Note that the set method can be used to either create a new key-value pair or update the value for a pre-existing key. Its up to you to check whether a key currently exists!

# As always, test your code thoroughly to make sure all properties of maps are enforced.

class Map 
    def initialize
        @map = Array.new
    end 

    def set(key, value)
        exists = false
        @map.each.with_index do |pair, idx|
            if pair[0] == key
                @map[idx][1] = value
                exists = true
            end
        end

        @map << [key, value] if exists == false
        @map.sort
    end

    def get(key)
        @map.each do |pair|
            if pair[0] == key 
                return pair[1]
            end
        end
    end
    
    def delete(key)
        pair_to_delete = Array.new
        @map.each do |pair|
            if pair[0] == key 
                pair_to_delete = pair
            end
        end
        @map.delete(pair_to_delete)
    end
end

