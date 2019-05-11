#Now let's write a Queue class. We will need the following instance methods: enqueue(el), dequeue, and peek.

class Queue
    def initialize
        @array = Array.new
    end

    def enqueue(el)
        @array << el
    end

    def dequeue
        @array.shift
    end

    def peek
        @array[0]
    end

end