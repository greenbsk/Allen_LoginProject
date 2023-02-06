import UIKit

extension UIView {
    func roundCorners(radius: CGFloat) {
        self.layer.cornerRadius = radius
        self.clipsToBounds = true
    }
}

class ViewController: UIViewController {
    
    let emailTextFieldView = UIView()
    let mainLable = UILabel()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        makeUI()
    }
    
    func makeUI() {
        emailTextFieldView.backgroundColor = UIColor.darkGray
        emailTextFieldView.roundCorners(radius: 10)
        view.addSubview(emailTextFieldView)
        emailTextFieldView.translatesAutoresizingMaskIntoConstraints = false
        
        emailTextFieldView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30).isActive = true
        emailTextFieldView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30).isActive = true
        emailTextFieldView.topAnchor.constraint(equalTo: view.topAnchor, constant: 200).isActive = true
        emailTextFieldView.heightAnchor.constraint(equalToConstant: 40).isActive = true
        
        
        mainLable.backgroundColor = UIColor.lightGray
        view.addSubview(mainLable)
        mainLable.translatesAutoresizingMaskIntoConstraints = false
        mainLable.leadingAnchor.constraint(equalTo: emailTextFieldView.leadingAnchor, constant: 10).isActive = true
        mainLable.trailingAnchor.constraint(equalTo: emailTextFieldView.trailingAnchor, constant: -10).isActive = true
        mainLable.topAnchor.constraint(equalTo: emailTextFieldView.topAnchor, constant: 10).isActive = true
        mainLable.heightAnchor.constraint(equalToConstant: 20).isActive = true
    }
}

