import UIKit

class ViewController: UIViewController {
    @IBOutlet private weak var greetingLabel: UILabel!

    @IBAction private func greet(_ button: UIButton) {
        button.isEnabled = false
        greetingLabel.text = "Hello, World!"
    }
}

