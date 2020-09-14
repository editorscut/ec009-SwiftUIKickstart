import UIKit

class GreetingLabel: UILabel {
    convenience init(displaying text: String) {
        self.init()
        textColor = .secondaryLabel
        font = UIFont.preferredFont(forTextStyle: .title1)
        self.text = text
    }
}
