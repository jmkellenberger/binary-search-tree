# A BST node
class Node
  attr_accessor :data, :left, :right

  def initialize(data)
    @data = data
    @left = nil
    @right = nil
  end
end

# A balanced binary search tree
class Tree
  attr_reader :root

  def initialize(array)
    sorted = array.uniq.sort
    @root = build_tree(sorted, 0, sorted.length - 1)
  end

  def build_tree(sorted, start, last)
    return nil if start > last

    mid = (start + last) / 2

    node = Node.new(sorted[mid])

    node.left = build_tree(sorted, start, mid - 1)
    node.right = build_tree(sorted, mid + 1, last)

    node
  end

  def insert (value)
  end

  def delete (value)
  end

  def find(value)
  end

  def level_order
  end

  def inorder
  end

  def preorder
  end

  def postorder
  end

  def height
  end

  def balanced?
  end

  def rebalance
  end

  # from another student of theodinproject.com
  def pretty_print(node = @root, prefix = '', is_left = true)
    pretty_print(node.right, "#{prefix}#{is_left ? '│   ' : '    '}", false) if node.right
    puts "#{prefix}#{is_left ? '└── ' : '┌── '}#{node.data}"
    pretty_print(node.left, "#{prefix}#{is_left ? '    ' : '│   '}", true) if node.left
  end
end

