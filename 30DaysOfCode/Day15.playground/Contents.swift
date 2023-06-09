/*
 Day 15: Linked List
 
 A Node class is provided for you in the editor. A Node object has an integer data field, data, and a Node instance pointer, next, pointing to another node (i.e.: the next node in the list).
*/

import Foundation

class Node {
    let data: Int
    var next: Node?

    init(data: Int) {
        self.data = data
    }
}

func insert(head: Node?, data: Int!) -> Node? {
    if(head == nil) {
        return Node(data: data)
    }
    
    let node = Node(data: data)
    var current = head
    while current?.next != nil {
        current = current!.next
    }
    current?.next = node
    return head
    
}

func display(head: Node?) {
    var current = head

    while current != nil {
        print(current!.data, terminator: " ")
        current = current!.next
    }
}

var head: Node?
let n: Int = 4

let elements = [2, 5, 7, 5]

for i in 0..<n {
    let element = elements[i]
    
    head = insert(head: head, data: element)
}

display(head: head)
