  class Stacks

    def initialize
      # create ivar to store stack here!
      @array = Array.new
    end

    def push(el)
      # adds an element to the stack
      @array << el
    end

    def pop
      # removes one element from the stack
      @array.pop
    end

    def peek
      # returns, but doesn't remove, the top element in the stack
      @array[-1]
    end


  end

  a = Stacks.new

 