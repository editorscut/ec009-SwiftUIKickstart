import UIKit

class GreetingButton: UIButton {
    convenience init(title: String,
                     target: AnyObject,
                     selector: Selector) {
        self.init(type: .roundedRect)
        setTitle(title, for: .normal)
        addTarget(target, action: selector, for: .touchUpInside)
    }
}
