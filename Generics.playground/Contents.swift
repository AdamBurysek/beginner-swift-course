import Foundation

func perform<N: Numeric> (
    _ op: (N, N) -> N,
    on lhs: N,
    and rhs: N
) -> N {
    op(lhs, rhs)
}

perform(+, on: 10, and: 20)
perform(-, on: 10, and: 20)
perform(*, on: 10, and: 20)
perform(/, on: 50.0, and: 20.0)

// Alternative way
func perform2<N>(
    _ op: (N, N) -> N,
    on lhs: N,
    and rhs: N
) -> N where N: Numeric {
    op(lhs, rhs)
}

perform2(+, on: 10, and: 20)
perform2(-, on: 10, and: 20)
perform2(*, on: 10, and: 20)
perform2(/, on: 50.0, and: 20.0)

protocol CanJump {
    func jump()
}

protocol CanRun {
    func run()
}

struct Person: CanJump, CanRun {
    func jump() {
        "Jumping ..."
    }
    
    func run() {
        "Running ..."
    }
}

func jumpAndRun<T: CanJump & CanRun>(_ value: T) {
    value.jump()
    value.run()
}

let person = Person()
jumpAndRun(person)

let names = ["Foo", "Bar"]

extension [String] {
    func longestString() -> String? {
        self.sorted {(lhs: String, rhs: String ) -> Bool in
            lhs.count > rhs.count
        }.first
    }
}

[
    "Foo",
    "Baz Bar",
    "Quix"
].longestString()


protocol View {
    func addSubView(_ view: View)
}

extension View {
    func addSubView(_ view: View) {
        // empty
    }
}

struct Button: View {
  // empty
}

protocol PresentableAsView {
    associatedtype ViewType: View
    func produceView() -> ViewType
    func configure(
        superView: View,
        thisView: ViewType
    )
    func present (
        view: ViewType,
        on superView: View
    )
}

extension PresentableAsView {
    func configure(
        superView: View,
        thisView: ViewType
    ) {
        // empty by default
    }
    func present (
        view: ViewType,
        on superView: View
    ) {
        superView.addSubView(view)
    }
}

struct MyButton: PresentableAsView {
    func produceView() -> Button {
        Button()
    }
    func configure(
        superView: View,
        // Know its button
        thisView: Button
    ) {
        // any
    }
}

extension PresentableAsView where ViewType == Button {
    func doSomethinwithButton() {
        "This is a button"
    }
}
