require_relative "lib/bst"

data = (Array.new(15) { rand(1..100) })
puts "Sorting #{data} and removing duplicates..."
puts "Creating a new tree from #{data.uniq.sort.length} elements..."
tree = Tree.new(data)

# puts "Balanced? #{tree.balanced?.to_s.upcase}"
# puts tree.level_order
# puts tree.preorder
# puts tree.postorder
# puts tree.in_order
# puts [1, 2, 3, 4, 5, 6, 7, 8, 10, 50, 30].each { |num| tree.insert(num)}
# puts "Balanced? #{tree.balanced?.to_s.upcase}"
# tree.rebalance
# puts "Balanced? #{tree.balanced?.to_s.upcase}"
# puts tree.level_order
# puts tree.preorder
# puts tree.postorder
# puts tree.in_order

tree.pretty_print