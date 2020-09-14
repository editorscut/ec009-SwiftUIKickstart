import UIKit

class ViewController: UIViewController {
    
    private let greetingLabel = UILabel()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // create and configure our StackView
        let stackView = UIStackView()
        view.addSubview(stackView)
                
        stackView.axis = .vertical
        stackView.alignment = .center
        stackView.translatesAutoresizingMaskIntoConstraints = false
        
        stackView.centerXAnchor
            .constraint(equalTo: view.centerXAnchor).isActive = true
        stackView.centerYAnchor
            .constraint(equalTo: view.centerYAnchor).isActive = true
        
        // create and configure our Label
        
        greetingLabel.textColor = .secondaryLabel
        greetingLabel.font = UIFont.preferredFont(forTextStyle: .title1)
        greetingLabel.text = "Hello"
        
        stackView.addArrangedSubview(greetingLabel)
        
        
        // create and configure our Button
        let greetingButton = UIButton(type: .roundedRect)
        greetingButton.setTitle("Press Here", for: .normal)
        greetingButton.addTarget(self,
                                 action: #selector(greet),
                                 for: .touchUpInside)
        
        stackView.addArrangedSubview(greetingButton)
    }
    
    // create the button action
    @objc private func greet(_ button: UIButton) {
        button.isEnabled = false
        greetingLabel.text = "Hello, World!"
    }
}

