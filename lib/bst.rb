# A BST node
class Node
  attr_accessor :data, :left, :right

  def initialize(data)
    @data = data
    @left = nil
    @right = nil
  end
end

class Tree
  attr_reader :root

  def initialize(array)
    sorted = array.uniq.sort
    @root = build_tree(sorted)
  end

  def build_tree(sorted)
    return unless sorted.instance_of?(Array)

    mid = sorted.length / 2
    
    node = Node.new(sorted[mid])
    return node if sorted.length < 2

    node.left = build_tree(sorted.slice(0..mid - 1))
    node.right = build_tree(sorted.slice(mid + 1..))

    node
  end

  # from another student of theodinproject.com
  def pretty_print(node = @root, prefix = '', is_left = true)
    pretty_print(node.right, "#{prefix}#{is_left ? '│   ' : '    '}", false) if node.right
    puts "#{prefix}#{is_left ? '└── ' : '┌── '}#{node.data}"
    pretty_print(node.left, "#{prefix}#{is_left ? '    ' : '│   '}", true) if node.left
  end
end

data = (Array.new(rand(15..60)) { rand(1..100) })
puts "Sorting #{data} and removing duplicates..."
puts "Creating a new tree from #{data.sort.uniq}..."
tree = Tree.new(data)

tree.pretty_print