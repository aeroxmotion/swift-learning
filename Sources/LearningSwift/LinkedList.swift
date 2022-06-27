private final class Node<Value> {
    let value: Value
    var parent: Node?

    init(_ value: Value, _ parent: Node<Value>?) {
        self.value = value
        self.parent = parent
    }
}

struct LinkedList<Value> {
    private var current: Node<Value>? = nil

    mutating func push(_ value: Value) {
        current = Node(value, current)
    }

    mutating func pop() -> Value? {
        guard let node = self.current else {
            return nil
        }

        let value = node.value
        current = node.parent

        return value
    }

    func each(_ iterator: (Value) -> Void) {
        var node = current

        while node != nil {
            iterator(node!.value)
            node = node!.parent
        }
    }
}
