class TreeNode {
  int val;
  TreeNode? left;
  TreeNode? right;
  TreeNode([this.val = 0, this.left, this.right]);
}

void main(List<String> args) {
  var treeA = TreeNode(0, TreeNode(1), TreeNode(2));
  var treeB = TreeNode(0, TreeNode(1), TreeNode(3));

  //print(isSameTree(treeA, treeB));
  countNodes(treeA);
}

bool isSameTree(TreeNode? p, TreeNode? q) {
  if (p == null && q == null) return true;
  if ((p == null && q != null) || (p != null && q == null)) return false;

  if (p!.val != q!.val) return false;

  if (!isSameTree(p.left, q.left)) return false;
  if (!isSameTree(p.right, q.right)) return false;

  return true;
}

int countNodes(TreeNode? root) {
  int counter = 0;

  traverse(TreeNode? root) {
    if (root == null) {
      return;
    }

    counter++;

    traverse(root.left);
    traverse(root.right);
  }

  traverse(root);
  print(counter);
  return counter;
}
