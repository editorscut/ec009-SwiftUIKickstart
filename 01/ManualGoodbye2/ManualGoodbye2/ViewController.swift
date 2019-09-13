import UIKit

class ViewController: UIViewController {
    private let greetingLabel = GreetingLabel(displaying: "Hello")

    override func viewDidLoad() {
        super.viewDidLoad()
        let stackView
            = VerticalStackView(in: view,
                                containing: greetingLabel,
                                            GreetingButton(title: "Press Here",
                                                           target: self,
                                                           selector: #selector(greet)))
        stackView.centered()
    }
    
    @objc private func greet(_ button: UIButton) {
        button.isEnabled = false
        greetingLabel.text = "Hello, World!"
    }
}

