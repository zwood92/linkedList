class LinkedListNode
  attr_accessor :value, :next_node

  def initialize(value, next_node=nil)
    @value = value
    @next_node = next_node
  end
end

# class Stack
#   attr_reader :data

#   def initialize
#       @data = nil
#   end

#   # Push a value onto the stack
#   def push(value)
#       # IMPLEMENT ME!
#       @data = LinkedListNode.new(value, @data)
#   end

#   # Pop an item off the stack.
#   # Remove the last item that was pushed onto the
#   # stack and return the value to the user
#   def pop
#       # I RETURN A VALUE
#       return print "nil\n" if @data.nil?
#       print "#{@data.value}\n"
#       @data = @data.next_node
#   end 
# end

# def reverse_list(list, previous=nil)
#   # ADD CODE HERE
#   if list 
#     next_node=list.next_node
#     list.next_node= previous 
#     reverse_list(next_node, list)

#   end
# end

def print_values(list_node)
  if list_node
    print "#{list_node.value} --> "
    print_values(list_node.next_node)
  else
    print "nil\n"
    return
  end
end

def constant_loop?(list)
  x = list.next_node
  y = list.next_node

  until y.nil? 
    y=y.next_node
    return false if y.nil? 

    y = y.next_node
    x = x.next_node
    return true if x == y
  end
  return false
end

node1 = LinkedListNode.new(37)
node2 = LinkedListNode.new(99, node1)
node3 = LinkedListNode.new(12, node2)


# print_values(node3)

puts constant_loop?(node3)
puts "-------"
node1.next_node = node3
puts constant_loop?(node3)

# revlist = reverse_list(node3)

# print_values(node1)

