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
    
    //이메일주소 또는 전화번호
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

    private lazy var passwordTextFieldView: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor.darkGray
        view.roundCorners(radius: 5)
        return view
    }()
    
    //메모리에 올라간 것 뿐이다.
    private var passwordInfoLabel: UILabel = {
        let label = UILabel()
        label.text = "비밀번호"
        label.font = UIFont.systemFont(ofSize: 18)
        label.textColor = UIColor.white
        return label
    }()
    
    private let passwordTextField: UITextField = {
        let tf = UITextField()
        tf.backgroundColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        tf.frame.size.height = 48
        tf.backgroundColor = .clear
        tf.textColor = .white
        tf.tintColor = .white
        tf.autocapitalizationType = .none
        tf.autocorrectionType = .no
        
        // 비밀번호 입력을 하는 텍스트 필드니까 비밀번호 가리는 설정
        tf.isSecureTextEntry = true
        tf.clearsOnBeginEditing = false
        //tf.addTarget(self, action: #selector(textFieldEditingChanged(_:)), for: .editingChanged)
        return tf
    }()
    
    
    private let passwordSecureButton: UIButton = {
        let button = UIButton(type: .custom)
        button.setTitle("표시", for: .normal)
        button.setTitleColor(.lightGray, for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 14, weight: .light)
      //  button.addTarget(self, action: #selector(<#T##@objc method#>), for: .touchUpInside)
        return button
    }()
    
    // MARK:: -로그인 버튼
    private let loginButton: UIButton = {
        let button = UIButton(type:  .custom)
        button.backgroundColor = .clear
        button.roundCorners(radius: 5)
        button.layer.borderWidth = 1
        button.layer.borderColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        button.setTitle("로그인", for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 16)
        button.isEnabled = false
        //  button.addTarget(self, action: #selector(<#T##@objc method#>), for: .touchUpInside)
        return button
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


