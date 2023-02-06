import UIKit

extension UIView {
    func roundCorners(radius: CGFloat) {
        self.layer.cornerRadius = radius
        self.clipsToBounds = true
    }
}

class ViewController: UIViewController {
    
    // - 이메일 입력하는 텍스트 뷰
    private lazy var emailTextFieldView: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor.darkGray
        view.roundCorners(radius: 5)
        return view
    }()
    
    private lazy var emailInfoLable: UILabel = {
        let label = UILabel()
        label.text = "이메일주소 또는 전화번호"
        label.font = UIFont.systemFont(ofSize: 18)
        label.textColor = UIColor.lightGray
        return label
    }()
    
    private lazy var emailTextField: UITextField = {
    let tf = UITextField()
    tf.frame.size.height = 48
    tf.backgroundColor = .clear
    tf.textColor = .white
    tf.tintColor = .white
    tf.autocapitalizationType = .none
    tf.autocorrectionType = .no
    tf.spellCheckingType = .no
    tf.keyboardType = .emailAddress
    return tf
    }()

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
        
        view.addSubview(emailInfoLable)
        emailInfoLable.translatesAutoresizingMaskIntoConstraints = false
        emailInfoLable.leadingAnchor.constraint(equalTo: emailTextFieldView.leadingAnchor, constant: 10).isActive = true
        emailInfoLable.trailingAnchor.constraint(equalTo: emailTextFieldView.trailingAnchor, constant: -10).isActive = true
        emailInfoLable.topAnchor.constraint(equalTo: emailTextFieldView.topAnchor, constant: 10).isActive = true
        emailInfoLable.heightAnchor.constraint(equalToConstant: 20).isActive = true
    }
}


