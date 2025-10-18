class ListNode {
  int val;
  ListNode? next;
  ListNode([this.val = 0, this.next]);
}

void main(List<String> args) {
  ListNode head = ListNode(
    1,
    ListNode(1, ListNode(2, ListNode(2, ListNode(2, ListNode(2))))),
  );
  //print(isPalindrome(head));
  printList(head);
  print("sd");
  removeElements(head, 1);
}

ListNode? reverseList(ListNode? head) {
  ListNode? temp;
  ListNode? prev;

  if (head == null) return null;
  if (head.next == null) return head;

  while (head!.next != null) {
    //// 0 -> 1 -> 2 -> 3
    temp = head.next;
    head.next = prev;
    prev = head;
    head = temp;
  }

  head.next = prev;

  return head;
}

bool isPalindrome(ListNode? head) {
  ListNode? next;
  ListNode? prev;
  ListNode? temp = head;
  ListNode? reversedHead = ListNode(head!.val);
  ListNode? reversedH = reversedHead;
  ListNode? newPrev;

  while (temp!.next != null) {
    ListNode? nextVal = ListNode(temp.next!.val);
    reversedHead?.next = nextVal;
    reversedHead = nextVal;

    temp = temp.next;
  }

  while (reversedH!.next != null) {
    next = reversedH.next;
    reversedH.next = prev;
    prev = reversedH;
    reversedH = next;
  }

  reversedH.next = prev;

  temp = head;
  reversedHead = reversedH;

  while (temp != null) {
    if (reversedHead == null) return false;

    if (temp.val != reversedHead.val) {
      return false;
    }

    temp = temp.next;
    reversedHead = reversedHead.next;
  }

  if (reversedHead != null) return false;

  return true;
}

void printList(ListNode? head) {
  while (head != null) {
    print(head.val);
    head = head.next;
  }
}

ListNode? removeElements(ListNode? head, int val) {
  ListNode? hRef = head;
  ListNode? prev;
  ListNode? iterator;

  while (head != null) {
    if (head.val == val) {
      iterator = head;
      while (iterator!.val == val) {
        iterator = iterator.next;
        if (iterator == null) break;
      }
      if (prev == null) {
        prev = iterator;
        hRef = iterator;
        head = iterator;
      } else {
        prev.next = iterator;
      }
    } else {
      prev = head;
    }

    head = head?.next;
  }
  printList(hRef);
  return hRef;
}
