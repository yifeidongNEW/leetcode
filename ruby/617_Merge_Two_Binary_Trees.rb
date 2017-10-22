# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val)
#         @val = val
#         @left, @right = nil, nil
#     end
# end

# @param {TreeNode} t1
# @param {TreeNode} t2
# @return {TreeNode}
def merge_trees(t1, t2)
   if t1 == nil && t2 == nil then
        return nil
    else
        if t1 == nil then
            return t2    
        end
        if t2 == nil then
            return t1
        end
    end
    
    if t1.val == nil && t2.val == nil then
        return tree_result
    end
    
    tree_result = TreeNode.new(t1.val + t2.val)

    if t1.left != nil && t2.left != nil then
        tree_result.left = merge_trees(t1.left,t2.left)
    else
        if t1.left == nil && t2.left == nil then
            tree_result.left = nil
        else
            if t1.left == nil then
                tree_result.left = t2.left
            end
            if t2.left == nil then
                tree_result.left = t1.left
            end
        end
    end

    if t1.right != nil && t2.right != nil then
        tree_result.right = merge_trees(t1.right,t2.right)
    else
        if t1.right == nil && t2.right == nil then
            tree_result.right = nil
        else
            if t1.right == nil then
                tree_result.right = t2.right
            end
            if t2.right == nil then
                tree_result.right = t1.right
            end
        end
    end

    return tree_result 
end