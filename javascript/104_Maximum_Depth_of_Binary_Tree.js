/**
 * Definition for a binary tree node.
 * function TreeNode(val) {
 *     this.val = val;
 *     this.left = this.right = null;
 * }
 */

// count
var longest;

/**
 * @param {TreeNode} root
 * @return {number}
 */
var maxDepth = function(root) {
    if(root == null){
        return 0;
    }
    longest = 1;
    OrderTraversal(root,longest);
    return longest;
};

/**
 * @param {TreeNode} node
 * @param {number} nowDeep
 * @return {number}
 */
function OrderTraversal(node,nowDeep){
    if(node.left == null && node.right == null){
        return;
    }
    nowDeep = nowDeep + 1;
    if(longest < nowDeep){
        longest = nowDeep;
    }
    if(node.left != null){
        OrderTraversal(node.left,nowDeep);
    }
    if(node.right != null){
        OrderTraversal(node.right,nowDeep);
    }
}